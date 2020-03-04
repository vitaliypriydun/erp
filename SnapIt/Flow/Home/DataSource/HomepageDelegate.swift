//
//  HomepageDelegate.swift
//  ERP
//
//  Created by Vitaliy Priydun on 28.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol HomepageDelegate: class {

    func viewTriggeredStartPauseEvent()
    func viewTriggeredTrackEvent()
    func viewTriggeredStopEvent()
}
