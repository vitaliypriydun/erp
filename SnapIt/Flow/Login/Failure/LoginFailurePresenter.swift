//
//  LoginFailurePresenter.swift
//  TAS_ERP
//
//  Created by vitalii on 6/13/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation

enum LoginStatus: String {

    case rejected = "REJECTED"
    case frozen = "FROZEN"
    case pending = "PENDING"
    case cancelled = "CANCELLED"
    case full = "FULL"
    case revoked = "REVOKED"
}

protocol LoginFailureInterface: class {

    func set(title: String)
    func set(message: String)
    func animateIn()
}

protocol LoginFailureOutput: ViewLifecycle {
    
	func viewTriggeredCloseEvent()
}

class LoginFailurePresenter: NSObject {
    
    private weak var view: LoginFailureInterface?
    private let status: LoginStatus
	private let router: LoginFailureRouterProtocol
    
	init(withView view: LoginFailureInterface, router: LoginFailureRouterProtocol, status: LoginStatus) {
        self.view = view
        self.status = status
		self.router = router
    }
}

// MARK: - LoginFailureOutput
    
extension LoginFailurePresenter: LoginFailureOutput {

    func viewDidLoad() {
        view?.set(title: status.title)
        view?.set(message: status.message)
        view?.animateIn()
    }
	
	func viewTriggeredCloseEvent() {
		router.logout()
	}
}

// Texts

extension LoginStatus {

    var title: String {
        let titles = Localization.Login.Failure.Titles.self
        return titles.blocked
    }

    var message: String {
        let messages = Localization.Login.Failure.Messages.self
        return messages.blocked
    }
}
