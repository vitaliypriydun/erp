//
//  NavigationController.swift
//  HYPR
//
//  Created by vitalii on 5/20/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        customizeAppearance()
    }

    // MARK: - Private
    
    private func customizeAppearance() {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.prefersLargeTitles = true
        navigationBar.titleTextAttributes = [.font: FontFamily.AvenirNextCyr.demi.font(size: 20) ?? .systemFont(ofSize: 20),
                                             .foregroundColor: Asset.Colors.blackFlat.color]
        navigationBar.tintColor = Asset.Colors.blackFlat.color
        view.backgroundColor = Asset.Colors.white.color
    }
}

extension UINavigationController {
    
    func fadeTo(_ viewController: UIViewController) {
        let transition: CATransition = CATransition()
        transition.duration = Animations.transitionDuration
        transition.type = CATransitionType.fade
        view.layer.add(transition, forKey: nil)
        pushViewController(viewController, animated: false)
    }
}
