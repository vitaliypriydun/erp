//
//  HomeRouter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol HomeRouterProtocol: class {
    
}

class HomeRouter {
    
    private weak var viewController: UIViewController?
    
    // MARK: - Lifecycle
    
    init(with viewController: UIViewController?) {
        self.viewController = viewController
    }
}

// MARK: - HomeRouterProtocol

extension HomeRouter: HomeRouterProtocol {
    
}
