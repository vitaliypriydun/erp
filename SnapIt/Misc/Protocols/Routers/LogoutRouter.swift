//
//  LogoutRouter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 13.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation
import UIKit

protocol LogoutRouter {
    
    var viewController: UIViewController? { get }
    func logout()
}

extension LogoutRouter {

    func logout() {
        viewController?.view.window?.slide(to: ModulesFactory.shared.makeLoginModule().interface, direction: .left)
    }
}
