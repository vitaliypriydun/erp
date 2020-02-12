//
//  SplashRouter.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol SplashRouterProtocol: class {
    
	func showLogin()
}

class SplashRouter {
    
    internal weak var viewController: UIViewController?
    
    // MARK: - Lifecycle
    
    init(with viewController: UIViewController?) {
        self.viewController = viewController
    }
}

// MARK: - SplashProtocol

extension SplashRouter: SplashRouterProtocol {
    
	func showLogin() {
		viewController?.view.window?.fade(to: ModulesFactory.shared.makeLoginModule().interface)
	}
}
