//
//  ServicesFactory.swift
//  TAS_ERP
//
//  Created by V on 3/21/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import UIKit
import Foundation

class ServicesFactory {
	
	private lazy var socketService = ServicesFactory.shared.makeSocketService()
	
    // MARK: - Singleton
    
    static let shared: ServicesFactory = ServicesFactory()
    private init() {}
    
    // MARK: - Public
	
    func makeAuthorizationService() -> AuthorizationServiceProtocol {
        return AuthorizationService(networkService: makeAuthorizedNetworkService(),
                                    keychainService: makeKeychainService())
    }
    
    func makeSocketService() -> SocketServiceProtocol {
        return SocketService(keychainService: makeKeychainService())
    }
    
    func makeHomepageService() -> HomepageServiceProtocol {
        return HomepageService(keychainService: makeKeychainService())
    }
    
    func makeTimerService() -> TimerServiceProtocol {
        return TimerService(keychainService: makeKeychainService())
    }
    
    // MARK: - Private
    
    private func makeNetworkService() -> Networking {
        return NetworkService(errorParser: makeAPIErrorParser())
    }
    
    private func makeAPIErrorParser() -> APIErrorParsing {
        return APIErrorParser()
    }
    
    private func makeKeychainService() -> KeychainServiceProtocol {
        return KeychainService()
    }
    
    private func makeUserDefaultsService() -> UserDefaultsServiceProtocol {
        return UserDefaultsService()
    }
	
	private func makeAuthorizedNetworkService() -> AuthorizedNetworking {
		return AuthorizedNetworkingService(networkingService: makeNetworkService(),
										   tokenProvider: makeTokenProvider(),
										   appStateManager: makeAuthorizationStateRouter())
	}
	
	private func makeTokenProvider() -> TokenProviderProtocol {
		return TokenProvider(keychainService: makeKeychainService(),
							 networkingService: makeNetworkService(),
							 socketService: socketService)
	}
	
	private func makeAuthorizationStateRouter() -> AuthorizationStateRouterProtocol {
		return AuthorizationStateRouter()
	}
}
