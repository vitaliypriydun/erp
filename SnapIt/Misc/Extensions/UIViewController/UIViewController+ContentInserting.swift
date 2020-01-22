//
//  UIViewController.swift
//  Hanabi
//
//  Created by Sergey on 20.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

extension UIViewController {

    func addTopRightButton(target: UIViewController?, selector: Selector?, title: String, style: UIBarButtonItem.Style = .plain) {
        let button = UIBarButtonItem(title: title, style: style, target: target, action: selector)
        let attributes = [NSAttributedString.Key.foregroundColor: Asset.Colors.grey155.color,
                          NSAttributedString.Key.font: FontFamily.AvenirLTStd._65Medium.font(size: 16) ?? Font.systemFont(ofSize: 16)]
        button.setTitleTextAttributes(attributes, for: .normal)
        navigationItem.rightBarButtonItem = button
    }

    func addTopLeftButton(target: UIViewController?, selector: Selector?, title: String, style: UIBarButtonItem.Style = .plain) {
        let button = UIBarButtonItem(title: title, style: style, target: target, action: selector)
        let attributes = [NSAttributedString.Key.foregroundColor: Asset.Colors.grey155.color,
                          NSAttributedString.Key.font: FontFamily.AvenirLTStd._65Medium.font(size: 16) ?? Font.systemFont(ofSize: 16)]
        button.setTitleTextAttributes(attributes, for: .normal)
        navigationItem.leftBarButtonItem = button
    }
    
    func addChild(_ viewController: UIViewController, to container: UIView) {
        addChild(viewController, with: { childView in
            childView.add(to: container)
        })
    }

    func addChild(_ viewController: UIViewController, to container: UIStackView) {
        addChild(viewController, with: { childView in
            container.addArrangedSubview(childView)
            container.layoutIfNeeded()
        })
    }

    // MARK: - Private
    
    private func addChild(_ viewController: UIViewController, with handler: (UIView) -> Void) {
        guard let childView = viewController.view else { return }
        addChild(viewController)
        handler(childView)
        viewController.didMove(toParent: self)
    }
}
