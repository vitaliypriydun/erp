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
        viewController?.view.window?.slide(to: ModulesFactory.shared.makeTabbarModule().interface, direction: .right)
    }
    
    func showResetPasswordScreen() {
        viewController?.view.window?.slide(to: ModulesFactory.shared.makeRestorePasswordModule().interface, direction: .right)
    }

    func showRejectScreen(status: LoginStatus) {
        viewController?.view.window?.slide(to: ModulesFactory.shared.makeLoginFailureModule().interface, direction: .right)
    }
}
