//
//  SocketService.swift
//  TAS_ERP
//
//  Created by Denis Romashov on 5/15/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation
import CoreLocation
import Starscream
import ObjectMapper

protocol SocketServiceProtocol {

    func connect()
    func disconnect()

    func observeSocketMessage(updateHandler: @escaping (WebSocketMessage) -> Void) -> NSKeyValueObservation
}

class SocketService: NSObject, SocketServiceProtocol {

    @objc dynamic var socketMessageBuffer = ""

    private let keychainService: KeychainServiceProtocol
    private var socket: WebSocket?
    private var connected: Bool = false

    init(keychainService: KeychainServiceProtocol) {
        self.keychainService = keychainService
        super.init()
        self.setupSocket()
    }

    // MARK: - SocketServiceProtocol

    func observeSocketMessage(updateHandler: @escaping (WebSocketMessage) -> Void) -> NSKeyValueObservation {
        return observe(\SocketService.socketMessageBuffer, options: [.new], changeHandler: { [weak self] (_, change) in
            guard let text = change.newValue,
                  let json = self?.serializeMessage(text),
                  let message = self?.handleMessage(json) else {
                return
            }
            updateHandler(message)
        })
    }

    func connect() {
        if socket == nil {
            setupSocket()
        }
        if !connected {
            socket?.connect()
        }
        socket?.delegate = self
    }

    func disconnect() {
        guard let socket = socket else { return }
        socket.disconnect()
    }

    // MARK: - Private
    
    private func handleMessage(_ json: Json) -> WebSocketMessage? {
        guard let message = json[.message] as? String,
            let event = SocketEvent(rawValue: message) else {
            return nil
        }

        switch event {
			// TODO: return concrete message
        default: return nil
        }
    }

    private func serializeMessage(_ message: String) -> Json? {
        guard let data = message.data(using: .utf8) else { return nil}
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? Json
            return json
        } catch {
            return nil
        }
    }

    private func setupSocket() {
        guard let token = keychainService.fetchToken(),
			let url = URL(string: "\(API.socketUrl)/?access_token=\(token)") else {
                return
        }
        socket = WebSocket(request: URLRequest(url: url))
    }
    
    private func handleDisconnect() {
        connected = false
        socket = nil
        connect()
    }
}

// MARK: - WebSocketDelegate
    
extension SocketService: WebSocketDelegate {
    
    func didReceive(event: WebSocketEvent, client: WebSocket) {
        switch event {
        case .text(let text):
            socketMessageBuffer = text
        case .error(let error):
            if let error = error {
                print(error)
            }
            handleDisconnect()
        case .disconnected(_, _), .reconnectSuggested(_), .cancelled:
            handleDisconnect()
        case .connected(_):
            connected = true
        default: break
        }
    }
}

private enum SocketEvent: String {

    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"
}

private extension String {

    static let data = "data"
    static let message = "message"
}
