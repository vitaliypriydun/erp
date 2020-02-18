//
//  ReusableCell.swift
//  TAS_ERP
//
//  Created by V on 3/29/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

protocol ReusableCell {
    
    static var reuseIdentifier: String { get }
}

extension ReusableCell {
    
    static var reuseIdentifier: String { return String(describing: self) }
}
