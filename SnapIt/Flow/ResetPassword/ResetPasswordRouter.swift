//
//  ResetPasswordRouter.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 23.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol ResetPasswordRouterProtocol: class, LogoutRouter {
    
}

class ResetPasswordRouter {
    
    internal weak var viewController: UIViewController?
    
    // MARK: - Lifecycle
    
    init(with viewController: UIViewController?) {
        self.viewController = viewController
    }
}

// MARK: - ResetPasswordRouterProtocol

extension ResetPasswordRouter: ResetPasswordRouterProtocol {
    
}
