//
//  AppRouter.swift
//  TAS_ERP
//
//  Created by V on 3/21/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import UIKit

class AppRouter {
    
    private let window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    // MARK: - Public
	
    func startApplication() {
        window?.makeKeyAndVisible()
		window?.rootViewController = ModulesFactory.shared.makeSplashModule().interface
    }
    
    // MARK: - Deep Links

    
    // MARK: - Private

    // TODO: Implement
}

extension AppRouter: TopViewControllerProvider {
    
    var topViewController: UIViewController? {
        return window?.rootViewController
    }
}
