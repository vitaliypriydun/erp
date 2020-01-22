//
//  AuthorizedNetworkingService.swift
//  PassportScan
//
//  Created by Vitaliy Priydun on 08.11.2019.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

typealias APIRequestComposer = (_ token: String) -> APIRequestProtocol

protocol AuthorizedNetworking: Networking {
	
    func execute<Response: APIResponseProtocol>(requestComposer: @escaping APIRequestComposer, completion: @escaping (Response?, APIError?) -> Void)
}

class AuthorizedNetworkingService {
	
	private let networkingService: Networking
	private let tokenProvider: TokenProviderProtocol
	private let authorizationStateRouter: AuthorizationStateRouterProtocol
	
	init(networkingService: Networking, tokenProvider: TokenProviderProtocol, appStateManager: AuthorizationStateRouterProtocol) {
		self.networkingService = networkingService
		self.tokenProvider = tokenProvider
		self.authorizationStateRouter = appStateManager
	}
}

// MARK: - AuthorizedNetworking

extension AuthorizedNetworkingService: AuthorizedNetworking {
	
	func execute<Response>(request: APIRequestProtocol, completion: @escaping (Response?, APIError?) -> Void) where Response: APIResponseProtocol {
		networkingService.execute(request: request, completion: completion)
	}
	
    func execute<Response: APIResponseProtocol>(requestComposer: @escaping APIRequestComposer, completion: @escaping (Response?, APIError?) -> Void) {
		tokenProvider.getToken { [weak self] (token, error) -> Void in
			guard let token = token else {
				completion(nil, error)
				if error?.statusCode == .forbidden, case .tokenInvalid = error?.errorKey {
                    self?.authorizationStateRouter.setUnauthorizedState()
                }
				return
			}
			let request = requestComposer(token)
			let wrappedCompletion: (Response?, APIError?) -> Void = { [weak self] response, error in
                if error?.statusCode == .forbidden, case .tokenInvalid = error?.errorKey {
					self?.authorizationStateRouter.setUnauthorizedState()
					return
				}
				completion(response, error)
			}
			self?.networkingService.execute(request: request, completion: wrappedCompletion)
		}
	}
}
