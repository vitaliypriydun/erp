//
//  UIWindow+FadeTransition.swift
//  TAS_ERP
//
//  Created by Vitaliy Priydun on 9/24/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension UIWindow {
    
    func fade(to viewController: UIViewController, duration: TimeInterval = 0.35) {
        if let frame = rootViewController?.view.frame {
            viewController.view.frame = frame
        }
        rootViewController = viewController
        makeKeyAndVisible()
        UIView.transition(with: self,
                          duration: duration,
                          options: [.transitionCrossDissolve, .curveEaseOut],
                          animations: { },
                          completion: nil)
    }
    
    func slide(to viewController: UIViewController, direction: SlideDirection) {
        guard let snapshot = rootViewController?.view.snapshotView(afterScreenUpdates: true),
            let newView = viewController.view else {
                return
        }
        rootViewController = viewController
        snapshot.frame = direction.resultFrame
        newView.addSubview(snapshot)
        newView.frame = direction.originalFrame
        UIView.animate({
            newView.frame = UIScreen.main.bounds
        }, duration: direction.transitionDuration, completion: { _ in
            snapshot.removeFromSuperview()
        })
    }
}

extension SlideDirection {
    
    var opposite: SlideDirection {
        switch self {
        case .bottom: return .up
        case .up: return .bottom
        case .left: return .right
        case .right: return .left
        }
    }
    
    var originalFrame: CGRect {
        switch self {
        case .left: return .offscreenLeft
        case .right: return .offscreenRight
        case .bottom: return .offscreenBottom
        case .up: return .offscreenTop
        }
    }
    
    var resultFrame: CGRect { return opposite.originalFrame }
    
    var transitionDuration: TimeInterval {
        switch self {
        case .bottom, .up: return 1.11
        default: return 0.83
        }
    }
}

private extension CGRect {
    
    static var offscreenTop: CGRect { return CGRect(x: 0, y: -bounds.height, width: bounds.width, height: bounds.height) }
    static var offscreenBottom: CGRect { return CGRect(x: 0, y: bounds.height, width: bounds.width, height: bounds.height) }
    static var offscreenLeft: CGRect { return CGRect(x: -bounds.width, y: 0, width: bounds.width, height: bounds.height) }
    static var offscreenRight: CGRect { return CGRect(x: bounds.width, y: 0, width: bounds.width, height: bounds.height) }
    
    private static let bounds = UIScreen.main.bounds
}
