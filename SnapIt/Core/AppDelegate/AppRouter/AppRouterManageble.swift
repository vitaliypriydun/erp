//
//  TopViewControllerProvider.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

// TODO: Доработать эту дичь

// MARK: - Protocols

protocol TopViewControllerProvider {
    var topViewController: UIViewController? { get }
}

protocol ViewControllerContextInfo {
    func isEqual(to info: ViewControllerContextInfo?) -> Bool
}

protocol ViewControllerContextHolder {
    var currentContext: ViewControllerContext? { get }
}

protocol ViewControllersByContextFactory {
    func viewController(for context: ViewControllerContext) -> UIViewController?
}

protocol ViewControllerContextSwitcher {
    func canSwitch(to context: ViewControllerContext) -> Bool
    func switchContext(to context: ViewControllerContext, animated: Bool)
}

// MARK: - Context

struct ViewControllerContext {
    public let screenType: String
    public let info: ViewControllerContextInfo?
}

// MARK: - Extensions

extension UITabBarController: TopViewControllerProvider {
    var topViewController: UIViewController? { return selectedViewController }
}

extension ViewControllerContextInfo where Self: Equatable {
    func isEqual(to info: ViewControllerContextInfo?) -> Bool {
        guard let info = info as? Self else { return false }
        return self == info
    }
}
