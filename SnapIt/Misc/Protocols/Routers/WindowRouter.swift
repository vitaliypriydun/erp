//
//  WindowRouter.swift
//  HYPR Driver
//
//  Created by Denis Romashov on 6/11/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol WindowTransitionRouter {

    var viewController: UIViewController? { get }

    func showViewController(vc: UIViewController)
}

extension WindowTransitionRouter {

    func showViewController(vc: UIViewController) {
        guard let window = viewController?.view.window,
            let currentView = window.rootViewController?.view else {
                return
        }
        UIView.transition(from: currentView, to: vc.view, duration: Animations.transitionDuration,
                          options: [.transitionCrossDissolve, .curveEaseInOut], completion: { _ in
            window.rootViewController = vc
        })
    }
}

// MARK: - Constants

private enum Animations {

    static var transitionDuration: TimeInterval { return 0.35 }
}
