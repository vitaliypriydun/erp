//
//  Date+StringDescription.swift
//  TAS_ERP
//
//  Created by vitalii on 5/27/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension Date {

    var toString: String {
        return DateFormatter.displayFormatter.string(from: self)
    }
    
    var toDayString: String {
        return DateFormatter.dayFormatter.string(from: self)
    }

    var formattedString: String {
        return DateFormatter.backendFormatter.string(from: self)
    }
}

extension String {

    var toDate: Date? {
        return DateFormatter.backendFormatter.date(from: self)
    }
}

// MARK: - Private
    
private extension DateFormatter {

    static var displayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE d'th' MMM '-' hh:mm a"
        return formatter
    }

    static var backendFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssxxxxx"
        return formatter
    }
    
    static var dayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM"
        return formatter
    }
}
