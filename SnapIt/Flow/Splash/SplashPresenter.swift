//
//  SplashPresenter.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol SplashInterface: class {
    
}

protocol SplashOutput: ViewLifecycle {
    
}

class SplashPresenter: NSObject {
    
    private weak var view: SplashInterface?
    private let router: SplashRouterProtocol
    private let authorizationService: AuthorizationServiceProtocol
    
    init(withView view: SplashInterface, router: SplashRouterProtocol, authorizationService: AuthorizationServiceProtocol) {
        self.view = view
        self.router = router
        self.authorizationService = authorizationService
    }
}

// MARK: - SplashViewControllerOutput

extension SplashPresenter: SplashOutput {

	func viewDidAppear() {
        if authorizationService.canAutologin {
            
        }
		// TODO: Auto auth
		router.showLogin()
	}
}
