//
//  LoginPresenter.swift
//  TAS_ERP
//
//  Created by vitalii on 5/10/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

protocol LoginInterface: class {

    func setLoginButtonEnabled(_ enabled: Bool)
    func startLoadingAnimation()
    func endLoadingAnimation()
    func showEmailIsInvalid()
    func showCredentialsAreInvalid()
}

protocol LoginOutput: ViewLifecycle {

    func viewEnteredTexts(_ email: String?, _ password: String?)
    func viewTriggeredLoginEvent(with email: String, password: String)
    func viewTriggeredForgotPasswordEvent()
}

class LoginPresenter {

    private weak var view: LoginInterface?
    private let router: LoginRoutable
    private let authService: AuthorizationServiceProtocol

    init(with view: LoginInterface, _ router: LoginRoutable,
        _ authService: AuthorizationServiceProtocol) {
        self.view = view
        self.router = router
        self.authService = authService
    }

    // MARK: - Private
    
    private func login(with email: String, password: String) {
        
    }
}

// MARK: - LoginOutput
    
extension LoginPresenter: LoginOutput {

    func viewDidLoad() {
        view?.setLoginButtonEnabled(false)
    }

    func viewEnteredTexts(_ email: String?, _ password: String?) {
        view?.setLoginButtonEnabled(false)
        guard Email(email ?? "") != nil, Password(password ?? "") != nil else { return }
        view?.setLoginButtonEnabled(true)
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
}
