//
//  ModulesFactory.swift
//  Quickly
//
//  Created by V on 2/13/19.
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
        var presenter = LoginPresenter(with: viewController, router, servicesFactory.makeAuthorizationService())
        viewController.presenter = presenter
        presenter.set(appearenceDirection: .left)
        return Module(presenter: presenter, interface: viewController)
    }
    
    func makeRestorePasswordModule() -> Module<ResetPasswordPresenter, UIViewController> {
        let viewController = ResetPasswordViewController()
        let router = ResetPasswordRouter(with: viewController)
        var presenter = ResetPasswordPresenter(withView: viewController, router: router)
        viewController.presenter = presenter
        presenter.set(appearenceDirection: .right)
        return Module(presenter: presenter, interface: viewController)
    }
    
    func makeLoginFailureModule() -> Module<LoginFailurePresenter, UIViewController> {
        let viewController = LoginFailureViewController()
        let router = LoginFailureRouter(with: viewController)
        let presenter = LoginFailurePresenter(withView: viewController, router: router, status: .rejected)
        viewController.presenter = presenter
        return Module(presenter: presenter, interface: viewController)
    }
    
    func makeTabbarModule() -> Module<TabbarPresenter, UITabBarController> {
        let tabbarController = TabbarController()
        let router = TabbarRouter(with: tabbarController)
        
        let presenter = TabbarPresenter(with: tabbarController,
                                        router: router,
                                        socketService: servicesFactory.makeSocketService())
        tabbarController.presenter = presenter
        tabbarController.viewControllers = [
            makeNavigationController(with: makeHomeModule().interface),
            makeNavigationController(with: makeTimesheetModule()),
            makeNavigationController(with: makeProfileModule())
        ]
        return Module(presenter: presenter, interface: tabbarController)
    }

    // MARK: - Private
       
    private func makeNavigationController(with viewController: UIViewController) -> UINavigationController {
        let navigationController = NavigationController()
        navigationController.viewControllers = [viewController]
        return navigationController
    }
    
    private func makeHomeModule() -> Module<HomePresenter, UIViewController> {
        let viewController = HomeViewController()
        let router = HomeRouter(with: viewController)
        var presenter = HomePresenter(withView: viewController, router: router)
        presenter.set(appearenceDirection: .bottom)
        viewController.presenter = presenter
        viewController.title = Localization.Home.title + Date().toDayString
        viewController.tabBarItem = TabbarItemsFactory.makeHomeButton()
        return Module(presenter: presenter, interface: viewController)
    }
    
    private func makeTimesheetModule() -> UIViewController {
        let vc = UIViewController()
        vc.title = "IN PROGRESS"
        vc.tabBarItem = TabbarItemsFactory.makeListButton()
        return vc
    }
    
    private func makeProfileModule() -> UIViewController {
        let vc = UIViewController()
        vc.title = "Profile"
        vc.tabBarItem = TabbarItemsFactory.makeProfileButton()
        return vc
    }
}
