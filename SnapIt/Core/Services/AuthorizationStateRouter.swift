//
//  AuthorizationStateRouter.swift
//  PassportScan
//
//  Created by Vitaliy Priydun on 08.11.2019.
//  Copyright © 2019 Vitaliy Priydun. All rights reserved.
//

import UIKit

protocol AuthorizationStateRouterProtocol {
	
	func setUnauthorizedState()
}

class AuthorizationStateRouter {
	
	init() { }
}

// MARK: - ApplicationStateManagerProtocol

extension AuthorizationStateRouter: AuthorizationStateRouterProtocol {
	
	func setUnauthorizedState() {
        guard let window = (UIApplication.shared.delegate as? AppDelegate)?.window else { return }
        let loginModule = ModulesFactory.shared.makeLoginModule()
        window.fade(to: loginModule.interface)
	}
}
