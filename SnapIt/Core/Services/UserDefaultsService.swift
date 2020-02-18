//
//  UserDefaultsService.swift
//  TAS_ERP
//
//  Created by Vitaliy Priydun on 13.01.2020.
//  Copyright © 2020 Евгений. All rights reserved.
//

import UIKit

protocol UserDefaultsWriting {
    
    func save(deviceToken: String)
}

protocol UserDefaultsReading {
    
    func fetchDeviceToken() -> String?
}

typealias UserDefaultsServiceProtocol = UserDefaultsReading & UserDefaultsWriting

class UserDefaultsService {
    
    let defaults = UserDefaults.standard
}

// MARK: - UserDefaultsWriting

extension UserDefaultsService: UserDefaultsWriting {
    
    func save(deviceToken: String) {
        defaults.set(deviceToken, forKey: .deviceToken)
        defaults.synchronize()
    }
}

// MARK: - UserDefaultsReading

extension UserDefaultsService: UserDefaultsReading {
    
    func fetchDeviceToken() -> String? {
        return defaults.string(forKey: .deviceToken)
    }
}

// MARK: - Keys

private extension String {
    
    static let deviceToken = "device_token"
}
