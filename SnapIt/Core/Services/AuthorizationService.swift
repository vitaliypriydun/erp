//
//  AuthorizationService.swift
//  TAS_ERP
//
//  Created by V on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import Alamofire

protocol UserAuthorizing {
    
    func loginUser(username: String, password: String, completion: @escaping (APIError?) -> Void)
    func logout()
}

protocol AuthorizationInfoStoring {
    
    var canAutologin: Bool { get }
}

typealias AuthorizationServiceProtocol = UserAuthorizing & AuthorizationInfoStoring

class AuthorizationService {
    
    private let networkService: AuthorizedNetworking
    private let keychainService: KeychainServiceProtocol
    
    init(networkService: AuthorizedNetworking, keychainService: KeychainServiceProtocol) {
        self.networkService = networkService
        self.keychainService = keychainService
    }
}

// MARK: - UserAuthorizing

extension AuthorizationService: UserAuthorizing {
    
    func loginUser(username: String, password: String, completion: @escaping (APIError?) -> Void) {
        let loginRequest = LoginRequest(username: username, password: password)
        networkService.execute(request: loginRequest) { [weak self] (response: LoginResponse?, error) in
            response?.token.map { self?.keychainService.save(token: $0) }
            completion(error)
        }
    }
    
    func logout() {
        keychainService.removeToken()
    }
}

// MARK: - AuthorizationInfoStoring

extension AuthorizationService: AuthorizationInfoStoring {
    
    // TODO: Fix
    var canAutologin: Bool { return  keychainService.fetchToken() != nil }
}
