//
//  LoginPresenter.swift
//  TAS_ERP
//
//  Created by vitalii on 5/10/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol LoginInterface: class, AppearAnimatableView {

    func startLoadingAnimation()
    func endLoadingAnimation()
    func showEmailIsInvalid()
    func showCredentialsAreInvalid()
    func startEditingEmail()
}

protocol LoginOutput: ViewLifecycle, AppearAnimatablePresenter {

    func viewTriggeredLoginEvent(with email: String, password: String)
    func viewTriggeredForgotPasswordEvent()
    func viewTriggeredEmailEvent()
    func viewTriggeredGoogleEvent()
}

class LoginPresenter {

    private weak var view: LoginInterface?
    private let router: LoginRoutable
    private let authService: AuthorizationServiceProtocol

    internal var appearenceDirection: SlideDirection?
    
    init(with view: LoginInterface, _ router: LoginRoutable,
         _ authService: AuthorizationServiceProtocol) {
        self.view = view
        self.router = router
        self.authService = authService
    }

    // MARK: - Private
    
    private func login(with email: String, password: String) {
        // TODO: validate response
        
        router.proceedToApp()
    }
}

// MARK: - LoginOutput
    
extension LoginPresenter: LoginOutput {
    
    var animatableView: AppearAnimatableView? {
        return view
    }
    
    func viewTriggeredLoginEvent(with email: String, password: String) {
        guard let email = Email(email) else {
            view?.showEmailIsInvalid()
            return
        }

        guard let password = Password(password) else {
            view?.showCredentialsAreInvalid()
            return
        }

        view?.startLoadingAnimation()
        login(with: email.rawValue, password: password.rawValue)
    }

    func viewTriggeredForgotPasswordEvent() {
        router.showResetPasswordScreen()
    }
    
    func viewTriggeredEmailEvent() {
        view?.startEditingEmail()
    }
    
    func viewTriggeredGoogleEvent() {
        // TODO: Login with google
    }
}
