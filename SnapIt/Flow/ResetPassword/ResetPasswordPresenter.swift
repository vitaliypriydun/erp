//
//  ResetPasswordPresenter.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 23.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol ResetPasswordInterface: class, AppearAnimatableView {
    
    func startLoading()
    func endLoading()
    func showEmailIsInvalid()
}

protocol ResetPasswordOutput: ViewLifecycle, AppearAnimatablePresenter {
    
    func viewTriggeredRestoreEvent(with email: String)
    func viewTriggeredLoginEvent()
}

class ResetPasswordPresenter: NSObject {
    
    private weak var view: ResetPasswordInterface?
    private let router: ResetPasswordRouterProtocol
    
    internal var appearenceDirection: SlideDirection?
    
    init(withView view: ResetPasswordInterface, router: ResetPasswordRouterProtocol) {
        self.view = view
        self.router = router
    }
}

// MARK: - ResetPasswordOutput

extension ResetPasswordPresenter: ResetPasswordOutput {
    
    var animatableView: AppearAnimatableView? {
        return view
    }
    
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
