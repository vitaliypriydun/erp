//
//  ResetPasswordPresenter.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 23.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol ResetPasswordInterface: class {
    
    func startLoading()
    func endLoading()
    func showEmailIsInvalid()
}

protocol ResetPasswordOutput: ViewLifecycle {
    
    func viewTriggeredRestoreEvent(with email: String)
    func viewTriggeredLoginEvent()
}

class ResetPasswordPresenter: NSObject {
    
    private weak var view: ResetPasswordInterface?
    private let router: ResetPasswordRouterProtocol
    
    init(withView view: ResetPasswordInterface, router: ResetPasswordRouterProtocol) {
        self.view = view
        self.router = router
    }
}

// MARK: - ResetPasswordOutput

extension ResetPasswordPresenter: ResetPasswordOutput {
    
    func viewTriggeredRestoreEvent(with email: String) {
        guard let email = Email(email) else {
            view?.showEmailIsInvalid()
            return
        }
        view?.startLoading()
        // TODO: Send dudes
        print(email)
    }
    
    func viewTriggeredLoginEvent() {
        router.logout()
    }
}
