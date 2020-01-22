//
//  LoginFailurePresenter.swift
//  HYPR
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
        switch self {
        case .rejected: return titles.rejected
        case .frozen: return titles.frozen
        case .pending: return titles.pending
        case .cancelled: return titles.cancelled
        case .revoked: return titles.cancelled
        case .full: return ""
        }
    }

    var message: String {
        let messages = Localization.Login.Failure.Messages.self
        switch self {
        case .rejected: return messages.rejected
        case .frozen: return messages.frozen
        case .pending: return messages.pending
        case .cancelled: return messages.cancelled
        case .revoked: return messages.cancelled
        case .full: return ""
        }
    }
}
