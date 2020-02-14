//
//  LoginFailureRouter.swift
//  TAS_ERP
//
//  Created by Vitaliy Priydun on 27.11.2019.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol LoginFailureRouterProtocol: LogoutRouter {
    
}

class LoginFailureRouter: NSObject, LoginFailureRouterProtocol {

    internal weak var viewController: UIViewController?

    init(with viewController: UIViewController) {
        self.viewController = viewController
    }
}
