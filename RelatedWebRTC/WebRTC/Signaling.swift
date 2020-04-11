//
//  Signaling.swift
//  RelatedWebRTC
//
//  Created by Carlos Henrique Antunes on 4/10/20.
//  Copyright © 2020 Carlos Henrique Antunes. All rights reserved.
//

import Foundation

struct SignalingMessage: Codable {
    let type: String
    let sessionDescription: SDP?
    let candidate: Candidate?
    let destination: String?
    let source: String?
}

struct SDP: Codable {
    let sdp: String
}

struct Candidate: Codable {
    let sdp: String
    let sdpMLineIndex: Int32
    let sdpMid: String
}
