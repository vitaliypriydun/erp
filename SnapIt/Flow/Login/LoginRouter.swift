//
//  LoginRouter.swift
//  TAS_ERP
//
//  Created by vitalii on 5/10/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol LoginRoutable: LinkOpenableRouter {

    func proceedToApp()
    func showRejectScreen(status: LoginStatus)
    func showResetPasswordScreen()
}

class LoginRouter: NSObject {

    internal weak var viewController: UIViewController?

    init(with viewController: UIViewController) {
        self.viewController = viewController
    }
}

extension LoginRouter: LoginRoutable {
    
    func proceedToApp() {
        // TODO: insert navigation to app
    }
    
    func showResetPasswordScreen() {
        // TODO: insert navigation
    }

    func showRejectScreen(status: LoginStatus) {
        // TODO: insert navigation
    }
}
