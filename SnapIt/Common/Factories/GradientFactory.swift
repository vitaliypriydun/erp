//
//  GradientFactory.swift
//  ERP
//
//  Created by Vitaliy Priydun on 13.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class GradientFactory {

    static func makeButtonGradient() -> [UIColor] {
        return [
            Asset.Colors.main.color,
            Asset.Colors.mainShadow.color,
            Asset.Colors.mainGradient.color
        ]
    }
}
