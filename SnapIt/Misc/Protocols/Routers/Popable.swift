//
//  Popable.swift
//  TAS_ERP
//
//  Created by Denis Romashov on 5/24/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol Popable {

    var viewController: UIViewController? { get }
    func viewTriggeredPopEvent()
}

extension Popable {

    func viewTriggeredPopEvent() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}
