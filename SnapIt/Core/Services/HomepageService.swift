//
//  HomepageService.swift
//  ERP
//
//  Created by Vitaliy Priydun on 18.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol HomepageServiceProtocol {
    
    func getHomepageCellOrder() -> [HomepageCell]
    func setHomepageOrder(_ cells: [HomepageCell])
    func getInvisibleCells() -> [HomepageCell]
}

class HomepageService {
    
    private let keychainService: KeychainServiceProtocol

    init(keychainService: KeychainServiceProtocol) {
        self.keychainService = keychainService
    }
}

// MARK: - HomepageServiceProtocol

extension HomepageService: HomepageServiceProtocol {
    
    func getHomepageCellOrder() -> [HomepageCell] {
        return keychainService.fetchHomepageOrder()
    }
    
    func setHomepageOrder(_ cells: [HomepageCell]) {
        
    }
    
    func getInvisibleCells() -> [HomepageCell] {
        return []
    }
}

// MARK: - Cells

enum HomepageCell: CaseIterable {
    
    case notifications
    case timer
    case timesheets
    case dayoffs
    case calendar
    case dayReport
    case monthReport
    case finances
}

extension HomepageCell {
    
    var reuseIdentifier: String {
        switch self {
        case .timer: return TimerCell.reuseIdentifier
        case .notifications: return NotificationsCell.reuseIdentifier
        case .timesheets: return TimesheetCell.reuseIdentifier
        case .dayoffs: return DayoffCell.reuseIdentifier
        case .calendar: return CalendarCell.reuseIdentifier
        case .dayReport: return TodayStatisticsCell.reuseIdentifier
        case .monthReport: return MonthStatisticsCell.reuseIdentifier
        case .finances: return FinancesCell.reuseIdentifier
        }
    }
    
    static func cell(from identifier: String) -> HomepageCell? {
        return HomepageCell.allCases.first(where: { $0.reuseIdentifier == identifier })
    }
}

// MARK: - PresenterFactory

extension HomepageCell {
    
    func makePresenter(with view: UITableViewCell) -> HomepageCellPresenter? {
        let serviceFactory = ServicesFactory.shared
        var presenter: HomepageCellPresenter?
        switch self {
        case .timer:
            guard let view = view as? TimerCell else { break }
            let cellPresenter = TimerCellPresenter(view: view, timerService: serviceFactory.makeTimerService())
            view.presenter = cellPresenter
            presenter = cellPresenter
        default: presenter = nil
        }
        return presenter
    }
}
