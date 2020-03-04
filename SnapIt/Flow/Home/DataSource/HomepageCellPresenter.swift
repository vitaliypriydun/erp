//
//  HomepageCellPresenter.swift
//  ERP
//
//  Created by Vitaliy Priydun on 24.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol HomepageCellPresenter {

    func update()
    func animateScroll()
    func set(delegate: HomepageDelegate?)
}

extension HomepageCellPresenter {
    
    func update() { }
    func animateScroll() { }
}
