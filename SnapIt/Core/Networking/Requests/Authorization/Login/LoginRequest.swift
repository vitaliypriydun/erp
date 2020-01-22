//
//  LoginRequest.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

struct LoginRequest {
    
    private let username: String
    private let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

extension LoginRequest: APIRequestProtocol {
    
    var endpoint: String { return API.Authentication.authentication }
    var method: Method { return .post }
    var parameters: [String: Any] {
        return ["username": username,
                "password": password]
    }
}
