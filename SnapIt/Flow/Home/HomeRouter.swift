//
//  HomeRouter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol HomeRouterProtocol: class {
    
    func showTimerInputPopup()
    func showTrackViewController(_ timer: TimerData?)
}

class HomeRouter {
    
    private weak var viewController: UIViewController?
    
    // MARK: - Lifecycle
    
    init(with viewController: UIViewController?) {
        self.viewController = viewController
    }
}

// MARK: - HomeRouterProtocol

extension HomeRouter: HomeRouterProtocol {
   
    func showTimerInputPopup() {
        viewController?.present(ModulesFactory.shared.makeTimerDataInputPopup().interface, animated: true, completion: nil)
    }
    
    func showTrackViewController(_ timer: TimerData? = nil) {
        
    }
}
