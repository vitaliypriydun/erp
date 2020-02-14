//
//  AppearAnimatable.swift
//  ERP
//
//  Created by Vitaliy Priydun on 14.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

protocol AppearAnimatablePresenter {
    
    var animatableView: AppearAnimatableView? { get }
    
    var appearenceDirection: SlideDirection? { get set }
    
    mutating func set(appearenceDirection: SlideDirection?)
}

protocol AppearAnimatableView {
    
    var animatableViews: [UIView] { get }

    func prepareAnimations(_ direction: SlideDirection)
    func animateIn()
    func animateOut(_ direction: SlideDirection)
}

// MARK: - Implementation

extension AppearAnimatablePresenter {
    
    mutating func set(appearenceDirection: SlideDirection?) {
        self.appearenceDirection = appearenceDirection
    }
}

extension AppearAnimatableView {
    
    func prepareAnimations(_ direction: SlideDirection) {
        animatableViews.forEach({
            $0.alpha = Defaults.ViewAlpha.hidden
            $0.transform = direction.dismissTransform
        })
    }
    
    func animateIn() {
        var delay: TimeInterval = 0.0
        animatableViews.forEach({ view in
            UIView.animate({
                view.alpha = Defaults.ViewAlpha.visible
                view.transform = .identity
            }, with: delay)
            delay += .delay
        })
    }
    
    func animateOut(_ direction: SlideDirection) {
        var delay: TimeInterval = 0.0
        animatableViews.reversed().forEach({ view in
            UIView.animate({
                view.alpha = Defaults.ViewAlpha.hidden
                view.transform = direction.dismissTransform
            }, with: delay)
            delay += .delay 
        })
    }
}

extension AppearAnimatablePresenter where Self: ViewLifecycle {
    
    func viewDidLoad() {
        guard let appearenceDirection = appearenceDirection else { return }
        animatableView?.prepareAnimations(appearenceDirection)
    }
    
    func viewWillAppear() {
        guard appearenceDirection != nil else { return }
        animatableView?.animateIn()
    }
    
    func viewWillDisappear() {
        guard let appearenceDirection = appearenceDirection else { return }
        animatableView?.animateOut(appearenceDirection)
    }
}

// MARK: - Constants

private extension TimeInterval {
    
    static let delay: TimeInterval = 0.05
}
