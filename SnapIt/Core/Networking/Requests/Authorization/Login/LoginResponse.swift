//
//  LoginResponse.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

struct LoginResponse: APIResponseProtocol {
    
    let token: Token?
    
    init(with json: [String: Any]?) {
        guard let json = json,
            let success = json["success"] as? Bool,
            success else {
            token = nil
            return
        }
        
        token = Token(JSON: json)
    }
}
