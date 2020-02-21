//
//  TimerDataPickerRouter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 21.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol TimerDataPickerRouterProtocol: class {
    
}

class TimerDataPickerRouter {
    
    private weak var viewController: UIViewController?
    
    // MARK: - Lifecycle -
    
    init(with viewController: UIViewController?) {
        self.viewController = viewController
    }
}

// MARK: - TimerDataPickerRouterProtocol -

extension TimerDataPickerRouter: TimerDataPickerRouterProtocol {
    
}
