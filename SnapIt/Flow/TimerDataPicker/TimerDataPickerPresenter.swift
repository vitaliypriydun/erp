//
//  TimerDataPickerPresenter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 21.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol TimerDataPickerInterface: class {
    
    func startPopupAnimation()
    func startClosingAnimation()
}

protocol TimerDataPickerOutput: ViewLifecycle, ClosablePresenter {
    
    func viewDidFinishClosingAnimation()
}

class TimerDataPickerPresenter: NSObject {
    
    private weak var view: TimerDataPickerInterface?
    internal var router: TimerDataPickerRouterProtocol
    
    init(withView view: TimerDataPickerInterface, router: TimerDataPickerRouterProtocol) {
        self.view = view
        self.router = router
    }
}

// MARK: - TimerDataPickerOutput

extension TimerDataPickerPresenter: TimerDataPickerOutput {
    
    func viewWillAppear() {
        view?.startPopupAnimation()
    }
    
    func close() {
        view?.startClosingAnimation()
    }
    
    func viewDidFinishClosingAnimation() {
        router.close()
    }
}
