//
//  AppDelegate.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var router: AppRouter?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        startApplication()
        
        return true
    }
    
    // MARK: - Private
    
    private func startApplication() {
        window = UIWindow(frame: UIScreen.main.bounds)
        router = AppRouter(window: window)
        router?.startApplication()
    }
}
