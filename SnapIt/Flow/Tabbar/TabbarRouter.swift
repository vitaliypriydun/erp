//
//  TabbarRouter.swift
//  HYPR
//
//  Created by vitalii on 5/31/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol TabbarRouterProtocol {

}

class TabbarRouter {

    private weak var tabbarController: UITabBarController?

    // MARK: - Lifecycle
    
    init(with tabbarController: UITabBarController?) {
        self.tabbarController = tabbarController
    }
}

// MARK: - TabbarRouterProtocol
    
extension TabbarRouter: TabbarRouterProtocol {

}
