//
//  HomePresenter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import Foundation

protocol HomeInterface: class, AppearAnimatableView {
    
    func set(cells: [HomepageCell])
}

protocol HomeOutput: ViewLifecycle, AppearAnimatablePresenter {
    
    func viewTriggeredEditEvent()
}

class HomePresenter: NSObject {
    
    private weak var view: HomeInterface?
    private let router: HomeRouterProtocol
    private let homepageService: HomepageServiceProtocol
    internal var appearenceDirection: SlideDirection?
    
    init(withView view: HomeInterface, router: HomeRouterProtocol, homepageService: HomepageServiceProtocol) {
        self.view = view
        self.router = router
        self.homepageService = homepageService
    }
}

// MARK: - HomeOutput

extension HomePresenter: HomeOutput {
    
    var animatableView: AppearAnimatableView? {  return view }
    
    func viewDidLoad() {
        view?.set(cells: homepageService.getHomepageCellOrder())
    }
    
    func viewTriggeredEditEvent() {
        
    }
}
