//
//  WebRTCClient.swift
//  RelatedWebRTC
//
//  Created by Carlos Henrique Antunes on 4/10/20.
//  Copyright © 2020 Carlos Henrique Antunes. All rights reserved.
//

import Foundation
import WebRTC

protocol WebRTCClientDelegate {
  func didGenerateCandidate(iceCandidate: RTCIceCandidate)
  func didIceConnectionStateChanged(iceConnectionState: RTCIceConnectionState)
  func didConnectWebRTC()
  func didDisconnectWebRTC()
}

class WebRTCClient: NSObject, RTCPeerConnectionDelegate, RTCVideoViewDelegate, RTCDataChannelDelegate {
  
  var delegate: WebRTCClientDelegate?
  public private(set) var isConnected: Bool = false
  private var peerConnectionFactory: RTCPeerConnectionFactory!
  private var peerConnection: RTCPeerConnection?
  private var videoCapturer: RTCVideoCapturer!
  private var localVideoTrack: RTCVideoTrack!
  private var localAudioTrack: RTCAudioTrack!
  private var localRenderView: RTCEAGLVideoView?
  private var localView: UIView!
  private var remoteRenderView: RTCEAGLVideoView?
  private var remoteView: UIView!
  private var remoteStream: RTCMediaStream?
  private var dataChannel: RTCDataChannel?
  private var channels: (video: Bool, audio: Bool, datachannel: Bool) = (false, false, false)
  private var customFrameCapturer: Bool = false
  
  override init() {
    super.init()
  }
  
  deinit {
    self.peerConnectionFactory = nil
    self.peerConnection = nil
  }
  
  // MARK: - Public functions
  func setup(videoTrack: Bool, audioTrack: Bool, dataChannel: Bool, customFrameCapturer: Bool){
    self.channels.video = videoTrack
    self.channels.audio = audioTrack
    self.customFrameCapturer = customFrameCapturer
    
    let videoEncoderFactory = RTCDefaultVideoEncoderFactory()
    let videoDecoderFactory = RTCDefaultVideoDecoderFactory()
    self.peerConnectionFactory = RTCPeerConnectionFactory(encoderFactory: videoEncoderFactory, decoderFactory: videoDecoderFactory)
    
    setupView()
    setupLocalTracks()
    
    if self.channels.video {
      startCaptureLocalVideo(cameraPositon: .front, videoWidth: 640, videoHeight: 640*16/9, videoFps: 30)
      self.localVideoTrack?.add(self.localRenderView!)
    }
  }
  
  func localVideoView() -> UIView {
      return localView
  }
  
  func remoteVideoView() -> UIView {
      return remoteView
  }
  
  func setupLocalViewFrame(frame: CGRect){
      localView.frame = frame
      localRenderView?.frame = localView.frame
  }
  
  func setupRemoteViewFrame(frame: CGRect){
      remoteView.frame = frame
      remoteRenderView?.frame = remoteView.frame
  }
  
  // MARK: Connect
  func connect(onSuccess: @escaping (RTCSessionDescription) -> Void){
    self.peerConnection = setupPeerConnection()
    self.peerConnection!.delegate = self
    
    if self.channels.video {
      self.peerConnection!.add(localVideoTrack, streamIds: ["stream0"])
    }
    if self.channels.audio {
      self.peerConnection!.add(localAudioTrack, streamIds: ["stream0"])
    }
    if self.channels.datachannel {
      self.dataChannel = self.setupDataChannel()
      self.dataChannel?.delegate = self
    }
    
    
    makeOffer(onSuccess: onSuccess)
  }
  
  // MARK: HangUp
  func disconnect(){
    if self.peerConnection != nil{
      self.peerConnection!.close()
    }
  }
  
  // MARK: Signaling Event
  func receiveOffer(offerSDP: RTCSessionDescription, onCreateAnswer: @escaping (RTCSessionDescription) -> Void){
    if(self.peerConnection == nil){
      self.peerConnection = setupPeerConnection()
      self.peerConnection!.delegate = self
      if self.channels.video {
        self.peerConnection!.add(localVideoTrack, streamIds: ["stream-0"])
      }
      if self.channels.audio {
        self.peerConnection!.add(localAudioTrack, streamIds: ["stream-0"])
      }
      if self.channels.datachannel {
        self.dataChannel = self.setupDataChannel()
        self.dataChannel?.delegate = self
      }
      
    }
    
    self.peerConnection!.setRemoteDescription(offerSDP) { (err) in
      if let error = err {
        print("failed to set remote offer SDP")
        print(error)
        return
      }
      
      self.makeAnswer(onCreateAnswer: onCreateAnswer)
    }
  }
  
  func receiveAnswer(answerSDP: RTCSessionDescription){
    self.peerConnection!.setRemoteDescription(answerSDP) { (err) in
      if let error = err {
        print("failed to set remote answer SDP")
        print(error)
        return
      }
    }
  }
  
  func receiveCandidate(candidate: RTCIceCandidate){
    self.peerConnection!.add(candidate)
  }
  
  func captureCurrentFrame(sampleBuffer: CMSampleBuffer){
    if let capturer = self.videoCapturer as? RTCFrameCapturer {
      capturer.capture(sampleBuffer)
    }
  }
  
  func captureCurrentFrame(sampleBuffer: CVPixelBuffer){
    if let capturer = self.videoCapturer as? RTCFrameCapturer {
      capturer.capture(sampleBuffer)
    }
  }
  
  // MARK: - Private functions
  // MARK: - Setup
  private func setupPeerConnection() -> RTCPeerConnection{
    let rtcConf = RTCConfiguration()
    rtcConf.iceServers = [RTCIceServer(urlStrings: ["stun:stun.l.google.com:19302"])]
    let mediaConstraints = RTCMediaConstraints.init(mandatoryConstraints: nil, optionalConstraints: nil)
    let pc = self.peerConnectionFactory.peerConnection(with: rtcConf, constraints: mediaConstraints, delegate: nil)
    return pc
  }
  
  private func setupView(){
    // local
    localRenderView = RTCEAGLVideoView()
    localRenderView!.delegate = self
    localView = UIView()
    localView.addSubview(localRenderView!)
    // remote
    remoteRenderView = RTCEAGLVideoView()
    remoteRenderView?.delegate = self
    remoteView = UIView()
    remoteView.addSubview(remoteRenderView!)
  }
  
  //MARK: - Local Media
  private func setupLocalTracks(){
    if self.channels.video == true {
      self.localVideoTrack = createVideoTrack()
    }
    if self.channels.audio == true {
      self.localAudioTrack = createAudioTrack()
    }
  }
  
  private func createAudioTrack() -> RTCAudioTrack {
    let audioConstrains = RTCMediaConstraints(mandatoryConstraints: nil, optionalConstraints: nil)
    let audioSource = self.peerConnectionFactory.audioSource(with: audioConstrains)
    let audioTrack = self.peerConnectionFactory.audioTrack(with: audioSource, trackId: "audio0")
    
    return audioTrack
  }
  
  private func createVideoTrack() -> RTCVideoTrack {
    let videoSource = self.peerConnectionFactory.videoSource()
    
    if self.customFrameCapturer {
      self.videoCapturer = RTCFrameCapturer(delegate: videoSource)
    }else if TARGET_OS_SIMULATOR != 0 {
      print("now runnnig on simulator...")
      self.videoCapturer = RTCFileVideoCapturer(delegate: videoSource)
    }
    else {
      self.videoCapturer = RTCCameraVideoCapturer(delegate: videoSource)
    }
    let videoTrack = self.peerConnectionFactory.videoTrack(with: videoSource, trackId: "video0")
    return videoTrack
  }
  
  private func startCaptureLocalVideo(cameraPositon: AVCaptureDevice.Position, videoWidth: Int, videoHeight: Int?, videoFps: Int) {
    if let capturer = self.videoCapturer as? RTCCameraVideoCapturer {
      var targetDevice: AVCaptureDevice?
      var targetFormat: AVCaptureDevice.Format?
      
      // find target device
      let devicies = RTCCameraVideoCapturer.captureDevices()
      devicies.forEach { (device) in
        if device.position ==  cameraPositon{
          targetDevice = device
        }
      }
      
      // find target format
      let formats = RTCCameraVideoCapturer.supportedFormats(for: targetDevice!)
      formats.forEach { (format) in
        for _ in format.videoSupportedFrameRateRanges {
          let description = format.formatDescription as CMFormatDescription
          let dimensions = CMVideoFormatDescriptionGetDimensions(description)
          
          if dimensions.width == videoWidth && dimensions.height == videoHeight ?? 0{
            targetFormat = format
          } else if dimensions.width == videoWidth {
            targetFormat = format
          }
        }
      }
      
      capturer.startCapture(with: targetDevice!,
                            format: targetFormat!,
                            fps: videoFps)
    } else if let capturer = self.videoCapturer as? RTCFileVideoCapturer{
      if let _ = Bundle.main.path( forResource: "sample.mp4", ofType: nil ) {
        capturer.startCapturing(fromFileNamed: "sample.mp4") { (err) in
          print(err)
        }
      }else{
        print("file did not found")
      }
    }
  }
  
  // MARK: - Local Data
  private func setupDataChannel() -> RTCDataChannel{
    let dataChannelConfig = RTCDataChannelConfiguration()
    dataChannelConfig.channelId = 0
    
    let _dataChannel = self.peerConnection?.dataChannel(forLabel: "dataChannel", configuration: dataChannelConfig)
    return _dataChannel!
  }
  
  // MARK: - Signaling Offer/Answer
  private func makeOffer(onSuccess: @escaping (RTCSessionDescription) -> Void) {
    self.peerConnection?.offer(for: RTCMediaConstraints.init(mandatoryConstraints: nil, optionalConstraints: nil)) { (sdp, err) in
      if let error = err {
        print("error with make offer")
        print(error)
        return
      }
      
      if let offerSDP = sdp {
        self.peerConnection!.setLocalDescription(offerSDP, completionHandler: { (err) in
          if let error = err {
            print("error with set local offer sdp")
            print(error)
            return
          }
          
          onSuccess(offerSDP)
        })
      }
      
    }
  }
  
  private func makeAnswer(onCreateAnswer: @escaping (RTCSessionDescription) -> Void){
    self.peerConnection!.answer(for: RTCMediaConstraints(mandatoryConstraints: nil, optionalConstraints: nil), completionHandler: { (answerSessionDescription, err) in
      if let error = err {
        print("failed to create local answer SDP")
        print(error)
        return
      }
      
      if let answerSDP = answerSessionDescription{
        self.peerConnection!.setLocalDescription( answerSDP, completionHandler: { (err) in
          if let error = err {
            print("failed to set local ansewr SDP")
            print(error)
            return
          }
          
          onCreateAnswer(answerSDP)
        })
      }
    })
  }
  
  // MARK: - Connection Events
  private func onConnected(){
    self.isConnected = true
    
    DispatchQueue.main.async {
      self.remoteRenderView?.isHidden = false
      self.delegate?.didConnectWebRTC()
    }
  }
  
  private func onDisConnected(){
    self.isConnected = false
    
    DispatchQueue.main.async {
      self.peerConnection!.close()
      self.peerConnection = nil
      self.remoteRenderView?.isHidden = true
      self.dataChannel = nil
      self.delegate?.didDisconnectWebRTC()
    }
  }
  
}

// MARK: - PeerConnection Delegeates
extension WebRTCClient {
  func peerConnection(_ peerConnection: RTCPeerConnection, didChange stateChanged: RTCSignalingState) {
    var state = ""
    if stateChanged == .stable{
      state = "stable"
    }
    
    if stateChanged == .closed{
      state = "closed"
    }
    
    print("signaling state changed: ", state)
  }
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didChange newState: RTCIceConnectionState) {
    
    switch newState {
    case .connected, .completed:
      if !self.isConnected {
        self.onConnected()
      }
    default:
      if self.isConnected{
        self.onDisConnected()
      }
    }
    
    DispatchQueue.main.async {
      self.delegate?.didIceConnectionStateChanged(iceConnectionState: newState)
    }
  }
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didAdd stream: RTCMediaStream) {
    self.remoteStream = stream
    
    if let track = stream.videoTracks.first {
      track.add(remoteRenderView!)
    }
    
    if let audioTrack = stream.audioTracks.first{
      audioTrack.source.volume = 8
    }
  }
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didGenerate candidate: RTCIceCandidate) {
    self.delegate?.didGenerateCandidate(iceCandidate: candidate)
  }
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didRemove stream: RTCMediaStream) { }
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didOpen dataChannel: RTCDataChannel) { }
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didRemove candidates: [RTCIceCandidate]) {}
  
  func peerConnectionShouldNegotiate(_ peerConnection: RTCPeerConnection) {}
  
  func peerConnection(_ peerConnection: RTCPeerConnection, didChange newState: RTCIceGatheringState) {}
}

// MARK: - RTCVideoView Delegate
extension WebRTCClient{
  func videoView(_ videoView: RTCVideoRenderer, didChangeVideoSize size: CGSize) {
    let isLandScape = size.width < size.height
    var renderView: RTCEAGLVideoView?
    var parentView: UIView?
    if videoView.isEqual(localRenderView){
      renderView = localRenderView
      parentView = localView
    }
    
    if videoView.isEqual(remoteRenderView!){
      renderView = remoteRenderView
      parentView = remoteView
    }
    
    guard let _renderView = renderView, let _parentView = parentView else {
      return
    }
    
    if(isLandScape){
      let ratio = size.width / size.height
      _renderView.frame = CGRect(x: 0, y: 0, width: _parentView.frame.height * ratio, height: _parentView.frame.height)
      _renderView.center.x = _parentView.frame.width/2
    }else{
      let ratio = size.height / size.width
      _renderView.frame = CGRect(x: 0, y: 0, width: _parentView.frame.width, height: _parentView.frame.width * ratio)
      _renderView.center.y = _parentView.frame.height/2
    }
  }
}

// MARK: - RTCDataChannelDelegate
extension WebRTCClient {
  func dataChannel(_ dataChannel: RTCDataChannel, didReceiveMessageWith buffer: RTCDataBuffer) { }
  
  func dataChannelDidChangeState(_ dataChannel: RTCDataChannel) { }
}

