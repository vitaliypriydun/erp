//
//  AttributedTextFactory.swift
//  ERP
//
//  Created by Vitaliy Priydun on 13.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class AttributedTextFactory {

    static func makeForgotPasswordText() -> NSAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: FontFamily.AvenirNextCyr.medium.font(size: 15) ?? Font.systemFont(ofSize: 15),
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .foregroundColor: Asset.Colors.white.color
        ]
        return NSMutableAttributedString(string: Localization.Login.forgotPassword, attributes: attributes)
    }
}
