//
//  UIView+Load.swift
//  HYPR
//
//  Created by vitalii on 7/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension UIView {

    // MARK: - Load
    
    static func nib(with name: String? = nil) -> UINib {
        let nibName = name ?? "\(self)"
        return UINib(nibName: nibName, bundle: nil)
    }

    static func instantiateFromNib(with name: String? = nil) -> Self? {
        func instanceFromNib<T: UIView>() -> T? {
            return nib(with: name).instantiate() as? T
        }
        return instanceFromNib()
    }

    // MARK: - Child
    
    func add(to container: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(self)
        topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
    }

    // MARK: - Utils
    
    func center(in bounds: CGRect) {
        frame.origin.x = max(0, (bounds.size.width - frame.size.width) * 0.5)
        frame.origin.y = max(0, (bounds.size.height - frame.size.height) * 0.5)
    }

    func center(in superview: UIView?) {
        superview.map({
            centerXAnchor.constraint(equalTo: $0.centerXAnchor).isActive = true
            $0.layoutIfNeeded()
        })
    }
}

private extension UINib {

    func instantiate() -> Any? {
        return instantiate(withOwner: nil, options: nil).first
    }
}
