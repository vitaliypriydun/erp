//
//  TokenProvider.swift
//  PassportScan
//
//  Created by Vitaliy Priydun on 11.11.2019.
//  Copyright © 2019 Vitaliy Priydun. All rights reserved.
//

import UIKit

protocol TokenProviderProtocol {

	func getToken(_ completion: @escaping (String?, APIError?) -> Void)
}

class TokenProvider {
	
	private let keychainService: KeychainServiceProtocol
	private let networkingService: Networking
	
	init(keychainService: KeychainServiceProtocol, networkingService: Networking) {
		self.keychainService = keychainService
		self.networkingService = networkingService
	}
}

// MARK: - TokenProviderProtocol

extension TokenProvider: TokenProviderProtocol {
	
	func getToken(_ completion: @escaping (String?, APIError?) -> Void) {
		guard let token = keychainService.fetchToken() else {
            completion(nil, BackendError(statusCode: HTTPStatusCode.forbidden.rawValue,
                                         message: "", // TODO: Insert error text
                                         errorKey: BackendErrorKey.tokenInvalid.rawValue))
			return
		}
		guard token.expirationDate.timeIntervalSinceNow < .expirationTreshold else {
			completion(token.value, nil)
			return
		}
		let request = RefreshTokenRequest(token: token.value, refreshToken: token.refreshToken)
		networkingService.execute(request: request) { [weak self] (response: RefreshTokenResponse?, error) in
			guard let token = response?.token else {
				completion(nil, error)
                if error?.statusCode == .forbidden, case .tokenInvalid = error?.errorKey {
					self?.keychainService.removeToken()
				}
				return
			}
			self?.keychainService.save(token: token)
			completion(token.value, error)
		}
	}
}

// MARK: - Constants

private extension TimeInterval {
	
	static var expirationTreshold: TimeInterval { return 60 }
}
