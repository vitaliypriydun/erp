//
//  AppDelegate.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var router: AppRouter?

    override init() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if #available(iOS 13.0, *) {
            self.window?.overrideUserInterfaceStyle = .light
        }
        router = AppRouter(window: window)
        super.init()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupAppearence()
        startApplication()
        
        return true
    }
    
    // MARK: - Private
    
    private func startApplication() {
        router?.startApplication()
    }
    
    private func setupAppearence() {
        if #available(iOS 11, *) {
            UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        }
    }
}
