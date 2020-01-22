//
//  String+Localizable.swift
//  HYPR
//
//  Created by vitalii on 5/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation

extension String {
    
    public func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
    func nsrange(of string: String) -> NSRange {
        let nsstring = self as NSString
        return nsstring.range(of: string)
    }
    
    func nsrange() -> NSRange {
        return NSRange(location: 0, length: self.count)
    }
    
    var lastPathComponent: String? {
        return URL(string: self)?.lastPathComponent
    }

    var onlyDigits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    }
}
