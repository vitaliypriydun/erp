//
//  TimeInterval+DateString.swift
//  ERP
//
//  Created by Vitaliy Priydun on 21.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

extension TimeInterval {

    var toTimeString: String {
        let time = NSInteger(self)
        return String(format: "%0.2d:%0.2d", (time / 3600), (time / 60) % 60)
    }
}
