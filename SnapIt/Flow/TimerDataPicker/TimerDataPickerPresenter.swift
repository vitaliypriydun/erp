//
//  TimerDataPickerPresenter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 21.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol TimerDataPickerInterface: class {
    
}

protocol TimerDataPickerOutput {
    
}

class TimerDataPickerPresenter: NSObject {
    
    private weak var view: TimerDataPickerInterface?
    private let router: TimerDataPickerRouterProtocol
    
    init(withView view: TimerDataPickerInterface, router: TimerDataPickerRouterProtocol) {
        self.view = view
        self.router = router
    }
}

// MARK: - TimerDataPickerOutput -

extension TimerDataPickerPresenter: TimerDataPickerOutput {

}
