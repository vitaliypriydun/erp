//
//  ResetPasswordPresenter.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 23.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol ResetPasswordInterface: class {
    
}

protocol ResetPasswordOutput {
    
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

}
