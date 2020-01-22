//
//  AppRouter.swift
//  PassportScan
//
//  Created by Евгений on 3/21/19.
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
        let splashModule = ModulesFactory.shared.makeSplashModule()
        window?.rootViewController = splashModule.interface
        window?.makeKeyAndVisible()
    }
}
