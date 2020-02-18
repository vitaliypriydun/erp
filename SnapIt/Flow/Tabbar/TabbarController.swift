//
//  TabbarController.swift
//  HYPR
//
//  Created by vitalii on 5/11/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

enum TabbarPage: Int {

    case home = 0
    case timesheet
    case profile
}

class TabbarController: UITabBarController {
    
    // MARK: - Public
        
    var presenter: TabbarOutput? {
        didSet {
            presenter?.viewDidSetPresenter()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        delegate = self
        presenter?.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidAppear()
    }

    // MARK: - Private
        
    private func setupView() {
        tabBar.clipsToBounds = true
        tabBar.layer.cornerRadius = 4.0
        tabBar.barStyle = .black
        tabBar.isTranslucent = false
    }
}

// MARK: - UITabBarControllerDelegate
    
extension TabbarController: UITabBarControllerDelegate {

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard selectedViewController != viewController else {
            (selectedViewController as? UINavigationController)?.popToRootViewController(animated: true)
            return false
        }
        let transition: CATransition = CATransition()
        transition.duration = Animations.transitionDuration
        transition.type = CATransitionType.fade
        view.layer.add(transition, forKey: nil)
        return true
    }
}

// MARK: - TabbarInterface
    
extension TabbarController: TabbarInterface {

    func setActiveTab(with type: TabbarPage, animated: Bool = true) {
        guard let viewControllers = viewControllers else { return }
        guard viewControllers.indices.contains(type.rawValue) else { return }
        if animated {
            if tabBarController(self, shouldSelect: viewControllers[type.rawValue]) {
                selectedViewController = viewControllers[type.rawValue]
                selectedIndex = type.rawValue
            }
        } else {
            selectedIndex = type.rawValue
        }
    }

    func activeTab() -> TabbarPage {
        return TabbarPage(rawValue: selectedIndex) ?? .home
    }
    
    func rootViewController(for tab: TabbarPage) -> NavigationController? {
        guard viewControllers?.indices.contains(tab.rawValue) == true else { return nil }
        return viewControllers?[tab.rawValue] as? NavigationController
    }
}
