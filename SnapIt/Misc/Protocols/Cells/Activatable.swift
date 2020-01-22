//
//  Activatable.swift
//  HYPR
//
//  Created by vitalii on 5/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation
import UIKit

protocol Activatable {

    func set(isActive: Bool)
}

extension Activatable where Self: UICollectionViewCell {

    func set(isActive: Bool) {
        contentView.alpha = isActive ? 1.0 : 0.5
    }
}
