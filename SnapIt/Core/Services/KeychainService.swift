//
//  KeychainService.swift
//  TAS_ERP
//
//  Created by V on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import SwiftKeychainWrapper

protocol KeychainWriting {
    
    // MARK: Homepage
    func save(homepageOrder: [HomepageCell])
    
    // MARK: Authorization
    func save(token: Token)
    func removeToken()
}

protocol KeychainReading {
    
    func fetchHomepageOrder() -> [HomepageCell]
    func fetchToken() -> Token?
}

typealias KeychainServiceProtocol = KeychainWriting & KeychainReading

class KeychainService {
    
    let keychain = KeychainWrapper.standard
}

// MARK: - KeychainWriting

extension KeychainService: KeychainWriting {
    
    func save(homepageOrder: [HomepageCell]) {
        keychain.set(homepageOrder.map({ $0.reuseIdentifier }).joined(separator: .separator), forKey: .homepage)
    }
    
    func save(token: Token) {
		keychain.set(token, forKey: .token)
    }
    
    func removeToken() {
        keychain.removeObject(forKey: .token)
    }
}

// MARK: - KeychainReading

extension KeychainService: KeychainReading {
    
    func fetchHomepageOrder() -> [HomepageCell] {
        guard let homepageOrder = keychain.string(forKey: .homepage) else { return HomepageCell.allCases }
        return homepageOrder.components(separatedBy: String.separator).compactMap({ HomepageCell.cell(from: $0) })
    }
    
    func fetchToken() -> Token? {
		return keychain.object(forKey: .token) as? Token
    }
}

// MARK: - Keys

private extension String {
    
    static let token = "token_info"
    static let homepage = "homepage"
    static let separator = "#"
}
