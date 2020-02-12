//
//  Password.swift
//  TAS_ERP
//
//  Created by vitalii on 5/10/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

public typealias Password = ValidatedString<PasswordValidator>

public enum PasswordValidator: StringValidator {
    
    public static func validate(_ password: String) -> String? {
        let password = password.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !password.isEmpty else { return nil }
        return password
    }
}
