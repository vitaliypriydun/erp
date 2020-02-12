//
//  UIButton+Disable.swift
//  TAS_ERP
//
//  Created by vitalii on 5/24/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension UIButton {

    func setEnabled(_ enabled: Bool) {
        isEnabled = enabled
        alpha = enabled ? Defaults.ViewAlpha.visible : Defaults.ViewAlpha.disabled
    }
}
