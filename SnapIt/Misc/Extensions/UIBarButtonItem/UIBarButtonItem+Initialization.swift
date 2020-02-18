//
//  UIBarButtonItem.swift
//  TAS_ERP
//
//  Created by V on 20.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation
import UIKit

extension UITabBarItem {
    
    convenience init(title: String, image: UIImage?, font: UIFont) {
        self.init(title: title, image: image, tag: 0)
        self.setTitleTextAttributes([.font: font], for: .normal)
    }
}
