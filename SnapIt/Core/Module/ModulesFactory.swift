//
//  ModulesFactory.swift
//  Quickly
//
//  Created by Евгений on 2/13/19.
//  Copyright © 2019 yevgeniy. All rights reserved.
//

import Foundation
import UIKit

class ModulesFactory {
    
    private let servicesFactory = ServicesFactory.shared
    
    // MARK: - Singleton
	
    static let shared: ModulesFactory = ModulesFactory()
    private init() {}
    
    // MARK: - Public
	
    func makeSplashModule() -> Module<SplashPresenter, UIViewController> {
        let viewController = SplashViewController()
        let router = SplashRouter(with: viewController)
        let presenter = SplashPresenter(withView: viewController,
                                        router: router,
                                        authorizationService: servicesFactory.makeAuthorizationService())
        viewController.presenter = presenter
        return Module(presenter: presenter, interface: viewController)
    }
    
    func makeLoginModule() -> Module<LoginPresenter, UIViewController> {
        let viewController = LoginViewController()
        let router = LoginRouter(with: viewController)
        let presenter = LoginPresenter(with: viewController, router, servicesFactory.makeAuthorizationService())
        viewController.presenter = presenter
        return Module(presenter: presenter, interface: viewController)
    }
    
    func makeRestorePasswordModule() -> Module<ResetPasswordPresenter, UIViewController> {
        let viewController = ResetPasswordViewController()
        let router = ResetPasswordRouter(with: viewController)
        let presenter = ResetPasswordPresenter(withView: viewController, router: router)
        viewController.presenter = presenter
        return Module(presenter: presenter, interface: viewController)
    }
    
    func makeLoginFailureModule() -> Module<LoginFailurePresenter, UIViewController> {
        let viewController = LoginFailureViewController()
        let router = LoginFailureRouter(with: viewController)
        let presenter = LoginFailurePresenter(withView: viewController, router: router, status: .rejected)
        viewController.presenter = presenter
        return Module(presenter: presenter, interface: viewController)
    }
    
    // MARK: - Private
}
