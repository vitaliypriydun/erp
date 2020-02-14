//
//  AppearAnimatable.swift
//  ERP
//
//  Created by Vitaliy Priydun on 14.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol AppearAnimatablePresenter {

    func set(appearenceDirection: SlideDirection?)
}


protocol AppearAnimatableView {

    func prepareAnimations()
    func animateIn(_ direction: SlideDirection)
}
