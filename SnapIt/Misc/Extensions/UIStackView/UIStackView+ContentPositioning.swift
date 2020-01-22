//
//  UIStackView.swift
//  Hanabi
//
//  Created by Sergey Kostyan on 11/8/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

extension UIStackView {
    
    func centerContent() {
        let viewsCount = arrangedSubviews.count
        if viewsCount.isMultiple(of: 2) || viewsCount == 1 {
            center(in: superview)
        } else {
            let middleIndex = (viewsCount - 1) / 2
            guard arrangedSubviews.indices.contains(middleIndex) else { return }
            let view = arrangedSubviews[middleIndex]
            view.center(in: superview?.superview)
        }
    }
}
