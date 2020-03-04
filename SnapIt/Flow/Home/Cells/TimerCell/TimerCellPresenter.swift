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
    
    init(view: TimerCellInterface?, timerService: TimerServiceProtocol) {
        self.view = view
        self.timerService = timerService
    }
    
    // MARK: - Private
    
    private func setupTimer() {
        timer = Timer(fire: Date(), interval: 30, repeats: true, block: { [weak self] _ in
            guard let timerData = self?.timerService.getTimer() else {
                self?.setDefaultState()
                return
            }
            self?.setTimerState(timerData: timerData)
        })
    }
    
    private func setDefaultState() {
        view?.setTimer(text: .emptyTimerText)
        view?.setStopButton(visible: false)
        view?.setTrackButton(visible: false)
    }
    
    private func setTimerState(timerData: TimerData) {
        view?.setTimer(text: timerData.time)
        view?.setTrackButton(visible: timerData.interval > 0)
        view?.setStopButton(visible: timerData.isCounting)
    }
}

// MARK: - TimerCellOutput

extension TimerCellPresenter: TimerCellOutput {
    
    func viewDidSetPresenter() {
        guard let timerData = timerService.getTimer() else {
            setDefaultState()
            return
        }
        setTimerState(timerData: timerData)
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
