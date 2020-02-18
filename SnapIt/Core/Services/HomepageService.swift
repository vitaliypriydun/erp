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
        return []
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
            default: return ""
        }
    }
    
    static func cell(from identifier: String) -> HomepageCell?  {
        return HomepageCell.allCases.first(where: { $0.reuseIdentifier == identifier })
    }
}
