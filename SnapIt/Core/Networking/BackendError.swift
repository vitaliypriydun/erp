//
//  BackendError.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

struct BackendError: APIError {
    
    let statusCode: HTTPStatusCode
    let message: String
    var errorKey: BackendErrorKey?
    
    init(statusCode: Int, message: String, errorKey: String? = nil) {
		self.statusCode = HTTPStatusCode(rawValue: statusCode) ?? HTTPStatusCode.notFound
        self.message = message
        self.errorKey = BackendErrorKey(rawValue: errorKey ?? "")
    }
}

extension BackendError {
    
    static func makeIncorrectResponseFormatError(statusCode: Int) -> APIError {
        return BackendError(statusCode: statusCode, message: "Incorrect response format")
    }
}

enum BackendErrorKey: String {
    
    case tokenInvalid = "invalid_authorization_token"
}
