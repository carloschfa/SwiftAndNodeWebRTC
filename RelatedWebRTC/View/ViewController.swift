//
//  ViewController.swift
//  RelatedWebRTC
//
//  Created by Carlos Henrique Antunes on 4/10/20.
//  Copyright © 2020 Carlos Henrique Antunes. All rights reserved.
//

import UIKit
import Starscream
import WebRTC

class ViewController: UIViewController, WebSocketDelegate, WebRTCClientDelegate, CameraSessionDelegate {
  
  // Mark: - Outlets
  @IBOutlet weak var scrollView: UIScrollView!
  
  @IBOutlet weak var webSocketStatusLabel: UILabel!
  @IBOutlet weak var webRTCStatusLabel: UILabel!
  @IBOutlet weak var sourceNameTextField: UITextField!
  @IBOutlet weak var destinationNameTextField: UITextField!
  @IBOutlet weak var callButton: UIButton!
  
  // Mark: - Private Properties
  private var source: String?
  private var destination: String?
  
  // Mark: - Public Properties
  var webRTCClient: WebRTCClient?
  var socket: WebSocket!
  var tryToConnectWebSocket: Timer!
  var cameraSession: CameraSession?
  var useCustomCapturer: Bool = true
  
  // Mark: - Constants
  let ipAddress: String = "18.228.43.69"
  
  override func viewDidAppear(_ animated: Bool) {
    
    let remoteVideoViewContainter = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5))
    remoteVideoViewContainter.backgroundColor = .gray
    self.view.addSubview(remoteVideoViewContainter)
    
    if webRTCClient != nil {
      let remoteVideoView = webRTCClient!.remoteVideoView()
      webRTCClient!.setupRemoteViewFrame(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5))
      remoteVideoView.center = remoteVideoViewContainter.center
      remoteVideoViewContainter.addSubview(remoteVideoView)
      
      let localVideoView = webRTCClient!.localVideoView()
      webRTCClient!.setupLocalViewFrame(frame: CGRect(x: 20, y: 20, width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.height/4))
      localVideoView.subviews.last?.isUserInteractionEnabled = true
      self.view.addSubview(localVideoView)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    #if targetEnvironment(simulator)
    // simulator does not have camera
    self.useCustomCapturer = false
    #endif
    
    webRTCClient = WebRTCClient()
    webRTCClient?.delegate = self
    webRTCClient?.setup(videoTrack: true, audioTrack: true, dataChannel: false, customFrameCapturer: useCustomCapturer)
    
    if useCustomCapturer {
      self.cameraSession = CameraSession()
      self.cameraSession?.delegate = self
      self.cameraSession?.setupSession()
    }
    
    socket = WebSocket(url: URL(string: "ws://" + ipAddress + ":8080/")!)
    socket.delegate = self
    
    tryToConnectWebSocket = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
      if self.webRTCClient != nil {
        if self.webRTCClient!.isConnected || self.socket.isConnected {
          return
        }
      }
      
      self.socket.connect()
    })
    self.setupActions()
  }
  
  private func setupActions() {
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    sourceNameTextField.addTarget(self, action: #selector(self.sourceNameDidChange(_:)), for: UIControl.Event.editingChanged)
    destinationNameTextField.addTarget(self, action: #selector(self.destinationNameDidChange(_:)), for: UIControl.Event.editingChanged)
    callButton.addTarget(self, action: #selector(self.callButtonTapped(_:)), for: .touchUpInside)
    
    let tap  = UITapGestureRecognizer(target: self.scrollView, action: #selector(UIView.endEditing))
    scrollView.addGestureRecognizer(tap)
  }
  
  @objc func keyboardWillShow(notification:NSNotification){
    let userInfo = notification.userInfo!
    var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
    keyboardFrame = self.view.convert(keyboardFrame, from: nil)
    
    var contentInset:UIEdgeInsets = self.scrollView.contentInset
    contentInset.bottom = keyboardFrame.size.height
    scrollView.contentInset = contentInset
  }
  
  @objc func keyboardWillHide(notification:NSNotification){
    let contentInset:UIEdgeInsets = UIEdgeInsets.zero
    scrollView.contentInset = contentInset
  }
  
  @objc func sourceNameDidChange(_ textField: UITextField) {
    self.source = textField.text
  }
  
  @objc func destinationNameDidChange(_ textField: UITextField) {
    self.destination = textField.text
  }
  
  // MARK: - UI Events
  @objc func callButtonTapped(_ sender: UIButton){
    if let value = callButton.titleLabel?.text {
      if value == "Call" {
        if webRTCClient != nil {
          if !webRTCClient!.isConnected {
            webRTCClient!.connect(onSuccess: { (offerSDP: RTCSessionDescription) -> Void in
              self.sendSDP(sessionDescription: offerSDP)
              self.setCallButtonTitle(with: "Disconnect")
            })
          }
        }
      } else if value == "Disconnect" {
        webRTCClient?.disconnect()
        webRTCClient?.setupPeerConnectionFactory()
        self.setCallButtonTitle(with: "Call")
      }
    }
  }
  
  private func setCallButtonTitle(with value: String) {
    DispatchQueue.main.async {
      self.callButton.setTitle(value, for: .normal)
    }
  }
  
  // MARK: - WebRTC Signaling
  private func sendSDP(sessionDescription: RTCSessionDescription){
    var type = ""
    if sessionDescription.type == .offer {
      type = "offer"
    }else if sessionDescription.type == .answer {
      type = "answer"
    }
    
    let sdp = SDP.init(sdp: sessionDescription.sdp)
    let signalingMessage = SignalingMessage.init(type: type, sessionDescription: sdp, candidate: nil, destination: self.destination, source: self.source)
    do {
      let data = try JSONEncoder().encode(signalingMessage)
      let message = String(data: data, encoding: String.Encoding.utf8)!
      if self.socket.isConnected {
        self.socket.write(string: message)
      }
    }catch{
      print(error)
    }
  }
  
  private func sendCandidate(iceCandidate: RTCIceCandidate){
    let candidate = Candidate.init(sdp: iceCandidate.sdp, sdpMLineIndex: iceCandidate.sdpMLineIndex, sdpMid: iceCandidate.sdpMid!)
    let signalingMessage = SignalingMessage.init(type: "candidate", sessionDescription: nil, candidate: candidate, destination: self.destination, source: self.source)
    do {
      let data = try JSONEncoder().encode(signalingMessage)
      let message = String(data: data, encoding: String.Encoding.utf8)!
      
      if self.socket.isConnected {
        self.socket.write(string: message)
      }
    }catch{
      print(error)
    }
  }
  
}

// MARK: - WebSocket Delegate
extension ViewController {
  
  func websocketDidConnect(socket: WebSocketClient) {
    webSocketStatusLabel.text = "connected"
    webSocketStatusLabel.textColor = .green
  }
  
  func websocketDidDisconnect(socket: WebSocketClient, error: Error?) {
    webSocketStatusLabel.text = "disconnected"
    webSocketStatusLabel.textColor = .red
  }
  
  func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {
    
    do{
      let signalingMessage = try JSONDecoder().decode(SignalingMessage.self, from: text.data(using: .utf8)!)
      
      if signalingMessage.type == "offer" {
        
        if signalingMessage.destination == self.source {
          webRTCClient?.receiveOffer(offerSDP: RTCSessionDescription(type: .offer, sdp: (signalingMessage.sessionDescription?.sdp)!), onCreateAnswer: {(answerSDP: RTCSessionDescription) -> Void in
            self.sendSDP(sessionDescription: answerSDP)
          })
        }
      }else if signalingMessage.type == "answer" {
        if signalingMessage.destination == self.source {
          webRTCClient?.receiveAnswer(answerSDP: RTCSessionDescription(type: .answer, sdp: (signalingMessage.sessionDescription?.sdp)!))
        }
      }else if signalingMessage.type == "candidate" {
        if signalingMessage.destination == self.source {
          let candidate = signalingMessage.candidate!
          webRTCClient?.receiveCandidate(candidate: RTCIceCandidate(sdp: candidate.sdp, sdpMLineIndex: candidate.sdpMLineIndex, sdpMid: candidate.sdpMid))
        }
      }
    }catch{
      print(error)
    }
    
  }
  
  func websocketDidReceiveData(socket: WebSocketClient, data: Data) { }
}

// MARK: - WebRTCClient Delegate
extension ViewController {
  func didGenerateCandidate(iceCandidate: RTCIceCandidate) {
    self.sendCandidate(iceCandidate: iceCandidate)
  }
  
  func didIceConnectionStateChanged(iceConnectionState: RTCIceConnectionState) {
    var state = ""
    
    switch iceConnectionState {
    case .checking:
      state = "checking"
      setCallButtonTitle(with: "Call")
    case .closed:
      state = "closed"
      setCallButtonTitle(with: "Call")
    case .completed:
      state = "completed"
      setCallButtonTitle(with: "Disconnect")
    case .connected:
      state = "connected"
      setCallButtonTitle(with: "Disconnect")
    case .count:
      state = "count..."
    case .disconnected:
      state = "disconnected"
      setCallButtonTitle(with: "Call")
    case .failed:
      state = "failed"
      setCallButtonTitle(with: "Call")
    case .new:
      state = "new..."
      setCallButtonTitle(with: "Call")
    default:
      state = "-"
      setCallButtonTitle(with: "Call")
    }
    self.webRTCStatusLabel.text = state
  }
  
  func didConnectWebRTC() {
    self.webRTCStatusLabel.textColor = .green
    // MARK: Disconnect websocket
    self.socket.disconnect()
  }
  
  func didDisconnectWebRTC() {
    self.webRTCStatusLabel.textColor = .red
  }
  
}

// MARK: - CameraSessionDelegate
extension ViewController {
  func didOutput(_ sampleBuffer: CMSampleBuffer) {
    if self.useCustomCapturer {
      if let cvpixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer){
        webRTCClient?.captureCurrentFrame(sampleBuffer: cvpixelBuffer)
      }else{
        print("no pixelbuffer")
      }
    }
  }
}
