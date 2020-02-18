//
//  GradientFactory.swift
//  ERP
//
//  Created by Vitaliy Priydun on 13.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit
import ChameleonFramework

class GradientFactory {

    static func makeButtonGradient() -> [UIColor] {
        return [
            Asset.Colors.main.color,
            Asset.Colors.mainShadow.color,
            Asset.Colors.mainGradient.color
        ]
    }
    
    static func makeMainGradient(for view: UIView, style: UIGradientStyle = .leftToRight) -> UIColor {
        return makeGradient(for: view, with: makeButtonGradient())
    }
    
    static func makeGradient(for view: UIView, with colors: [UIColor], style: UIGradientStyle = .leftToRight) -> UIColor {
        return UIColor(gradientStyle: style, withFrame: view.bounds, andColors: colors)
    }
}
