//
//  RefreshTokenRequest.swift
//  TAS_ERP
//
//  Created by Vitaliy Priydun on 11.11.2019.
//  Copyright © 2019 Vitaliy Priydun. All rights reserved.
//

import UIKit

struct RefreshTokenRequest {
	
	private let token: String
	private let refreshToken: String
	
	init(token: String, refreshToken: String) {
		self.refreshToken = refreshToken
		self.token = token
	}
}

extension RefreshTokenRequest: APIRequestProtocol {
	
	var endpoint: String { return API.Authentication.refreshToken }
	var method: Method { return .post }
	var parameters: [String: Any] { return ["refresh_token": refreshToken] }
    var headers: [String: String] { return ["Authorization": "Bearer \(token)"] }
}
