//
//  UIWindow+FadeTransition.swift
//  TAS_ERP
//
//  Created by Vitaliy Priydun on 9/24/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension UIWindow {
    
    func fade(to viewController: UIViewController, duration: TimeInterval = 0.5) {
        if let frame = rootViewController?.view.frame {
            viewController.view.frame = frame
        }
        rootViewController = viewController
        makeKeyAndVisible()
        UIView.transition(with: self,
                          duration: duration,
                          options: [.transitionCrossDissolve, .curveEaseInOut],
                          animations: { },
                          completion: nil)
    }
}
