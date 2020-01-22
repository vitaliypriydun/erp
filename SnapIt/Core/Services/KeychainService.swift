//
//  KeychainService.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import SwiftKeychainWrapper

protocol KeychainWriting {
    
    func save(token: Token)
    func removeToken()
}

protocol KeychainReading {
    
    func fetchToken() -> Token?
}

typealias KeychainServiceProtocol = KeychainWriting & KeychainReading

class KeychainService {
    
    let keychain = KeychainWrapper.standard
}

// MARK: - KeychainWriting

extension KeychainService: KeychainWriting {
    
    func save(token: Token) {
		keychain.set(token, forKey: .token)
    }
    
    func removeToken() {
        keychain.removeObject(forKey: .token)
    }
}

// MARK: - KeychainReading

extension KeychainService: KeychainReading {
    
    func fetchToken() -> Token? {
		return keychain.object(forKey: .token) as? Token
    }
}

// MARK: - Keys

private extension String {
    
    static let token = "token_info"
}
