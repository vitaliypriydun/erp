//
//  TimerCellPresenter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 24.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol TimerCellInterface: class {
    
    func setStopButton(visible: Bool)
    func setPauseButton(state: Bool)
    func setTrackButton(visible: Bool)
    func setTimer(text: String)
}

protocol TimerCellOutput: HomepageCellPresenter, ViewLifecycle {
    
    func viewTriggeredStopEvent()
    func viewTriggeredStartPauseEvent()
    func viewTriggeredTrackEvent()
}

class TimerCellPresenter: HomepageCellPresenter {
    
    private weak var view: TimerCellInterface?
    private weak var delegate: HomepageDelegate?
    private var timerService: TimerServiceProtocol
    private var timer: Timer?
    private var timerData: TimerData? { return timerService.getTimer() }
    
    init(view: TimerCellInterface?, timerService: TimerServiceProtocol) {
        self.view = view
        self.timerService = timerService
    }
    
    // MARK: - Private
    
    private func setupTimer() {
        timer = Timer(fire: Date(), interval: 30, repeats: true, block: { [weak self] _ in
            self?.view?.setTimer(text: self?.timerData?.time ?? .emptyTimerText)
        })
    }
    
    private func setDefaultState() {
        view?.setTimer(text: .emptyTimerText)
        view?.setStopButton(visible: false)
        view?.setTrackButton(visible: false)
    }
}

// MARK: - TimerCellOutput

extension TimerCellPresenter: TimerCellOutput {
    
    func viewDidSetPresenter() {
        guard let timer = timerService.getTimer() else {
            setDefaultState()
            return
        }
        view?.setTimer(text: timer.time)
        setupTimer()
    }
    
    func set(delegate: HomepageDelegate?) {
        self.delegate = delegate
    }
    
    func viewTriggeredStopEvent() {
        delegate?.viewTriggeredStopEvent()
    }
    
    func viewTriggeredStartPauseEvent() {
        delegate?.viewTriggeredStartPauseEvent()
    }
    
    func viewTriggeredTrackEvent() {
        delegate?.viewTriggeredTrackEvent()
    }
}

// MARK: - Constants
 
private extension String {
    
    static let emptyTimerText = "00h 00m"
}
