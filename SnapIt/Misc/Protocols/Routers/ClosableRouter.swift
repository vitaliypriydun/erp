//
//  ClosableRouter.swift
//  TAS_ERP
//
//  Created by vitalii on 5/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation
import UIKit

protocol ClosableRouter {
    
    var viewController: UIViewController? { get }
    func close()
}

extension ClosableRouter {

    func close() {
        viewController?.view.endEditing(true)
        if let navigationController = viewController?.navigationController {
            navigationController.popViewController(animated: true)
        } else {
            viewController?.dismiss(animated: true, completion: nil)
        }
    }
}
