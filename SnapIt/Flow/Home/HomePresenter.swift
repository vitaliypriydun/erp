//
//  HomePresenter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol HomeInterface: class, AppearAnimatableView {
    
}

protocol HomeOutput: ViewLifecycle, AppearAnimatablePresenter {
    
}

class HomePresenter: NSObject {
    
    private weak var view: HomeInterface?
    private let router: HomeRouterProtocol
    internal var appearenceDirection: SlideDirection?
    
    init(withView view: HomeInterface, router: HomeRouterProtocol) {
        self.view = view
        self.router = router
    }
}

// MARK: - HomeOutput

extension HomePresenter: HomeOutput {
    
    var animatableView: AppearAnimatableView? {  return view }
}
