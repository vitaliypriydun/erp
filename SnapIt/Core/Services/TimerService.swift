//
//  TimerService.swift
//  ERP
//
//  Created by Vitaliy Priydun on 20.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

typealias TimerFields = (projectId: String, workType: String)

protocol TimerServiceProtocol {
    
    func startTimer(projectId: String, workType: String)
    func pauseTimer() 
    func endTimer()
    func getTimerData() -> (date: Date, parameters: TimerFields)
}

class TimerService {

    private let keychainService: KeychainServiceProtocol

    init(keychainService: KeychainServiceProtocol) {
        self.keychainService = keychainService
    }
}

extension TimerService: TimerServiceProtocol {
    
    func startTimer(projectId: String, workType: String) {
        
    }
    
    func endTimer() {
        
    }
    
    func getTimerData() -> (date: Date, parameters: TimerFields) {
        
    }
}
