//
//  TimerService.swift
//  ERP
//
//  Created by Vitaliy Priydun on 20.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol TimerServiceProtocol {
    
    func createTimer(with data: TimerData)
    func startTimer()
    func pauseTimer() 
    func endTimer()
    func getTimer() -> TimerData?
}

class TimerService {

    private let keychainService: KeychainServiceProtocol
    private var timer: TimerData?

    init(keychainService: KeychainServiceProtocol) {
        self.keychainService = keychainService
    }
}

extension TimerService: TimerServiceProtocol {
    
    func createTimer(with data: TimerData) {
        timer = data
        startTimer()
        keychainService.save(timer: data)
    }
    
    func startTimer() {
        timer?.play()
    }
    
    func pauseTimer() {
        guard let timer = timer ?? getTimer() else { return }
        timer.pause()
        keychainService.save(timer: timer)
    }
    
    func endTimer() {
        keychainService.removeTimer()
        timer = nil
    }
    
    func getTimer() -> TimerData? {
        return timer ?? keychainService.fetchTimer()
    }
}
