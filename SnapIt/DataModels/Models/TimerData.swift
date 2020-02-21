//
//  TimerData.swift
//  ERP
//
//  Created by Vitaliy Priydun on 20.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class TimerData: NSObject, NSCoding {
    
    var time: String {
        guard let startTime = startTime else { return previouslyLoggedTime.toTimeString }
        return (startTime.timeIntervalSinceNow + previouslyLoggedTime).toTimeString
    }
    
    private(set) var projectId: String
    private(set) var orderId: String
    private(set) var workType: WorkType
    private(set) var taskType: String
    
    private var previouslyLoggedTime: TimeInterval = 0.0
    private var startTime: Date?
    
    // MARK: - NSCoding

    required init?(coder: NSCoder) {
        self.previouslyLoggedTime = coder.decodeObject(forKey: .previouslyLogged) as? TimeInterval ?? 0.0
        self.projectId = coder.decodeObject(forKey: .projectId) as? String ?? ""
        self.orderId = coder.decodeObject(forKey: .orderId) as? String ?? ""
        self.workType = WorkType(rawValue: coder.decodeObject(forKey: .workType) as? String ?? "") ?? .office
        self.startTime = coder.decodeObject(forKey: .startDate) as? Date
        self.taskType = coder.decodeObject(forKey: .taskType) as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(previouslyLoggedTime, forKey: .previouslyLogged)
        coder.encode(projectId, forKey: .projectId)
        coder.encode(orderId, forKey: .orderId)
        coder.encode(workType.rawValue, forKey: .workType)
        coder.encode(startTime, forKey: .startDate)
    }
    
    // MARK: - Actions
    
    func pause() {
        guard let startTime = startTime else { return }
        previouslyLoggedTime += startTime.timeIntervalSinceNow
        self.startTime = nil
    }
}

// MARK: - Constants

private extension String {
    
    static let previouslyLogged = "previously_logged_time"
    static let projectId = "project_id"
    static let orderId = "order_id"
    static let workType = "work_type"
    static let startDate = "start_date"
    static let taskType = "task_type"
}
