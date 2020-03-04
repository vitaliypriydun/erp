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
    func set(editing: Bool)
}

protocol HomeOutput: ViewLifecycle, AppearAnimatablePresenter, HomepageDelegate {
    
    func viewTriggeredEditEvent()
    func viewTriggeredSaveEvent(_ order: [HomepageCell])
}

class HomePresenter: NSObject {
    
    private weak var view: HomeInterface?
    private let router: HomeRouterProtocol
    private let homepageService: HomepageServiceProtocol
    private let timerService: TimerServiceProtocol
    internal var appearenceDirection: SlideDirection?
    
    init(withView view: HomeInterface, router: HomeRouterProtocol, homepageService: HomepageServiceProtocol, timerService: TimerServiceProtocol) {
        self.view = view
        self.router = router
        self.homepageService = homepageService
        self.timerService = timerService
    }
}

// MARK: - HomeOutput

extension HomePresenter: HomeOutput {
    
    var animatableView: AppearAnimatableView? {  return view }
    
    func viewDidLoad() {
        view?.set(cells: homepageService.getHomepageCellOrder())
    }
    
    func viewTriggeredEditEvent() {
        view?.set(editing: true)
    }
    
    func viewTriggeredSaveEvent(_ order: [HomepageCell]) {
        view?.set(editing: false)
        homepageService.setHomepageOrder(order)
    }
}

// MARK: - CellDelegate

extension HomePresenter: HomepageDelegate {
    
    func viewTriggeredStartPauseEvent() {
        if let timer = timerService.getTimer() {
            timer.isCounting ? timer.pause() : timer.play()
        } else {
            router.showTimerInputPopup()
        }
    }
    
    func viewTriggeredTrackEvent() {
        timerService.pauseTimer()
        router.showTrackViewController(timerService.getTimer())
    }
    
    func viewTriggeredStopEvent() {
        timerService.endTimer()
    }
}
