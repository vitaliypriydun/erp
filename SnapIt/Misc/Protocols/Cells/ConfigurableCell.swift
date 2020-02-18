//
//  ConfigurableCell.swift
//  TAS_ERP
//
//  Created by V on 3/29/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

protocol ConfigurableCell {
    associatedtype Item
    
    func configure(with item: Item)
}
