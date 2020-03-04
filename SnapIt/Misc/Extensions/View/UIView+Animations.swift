//
//  UIView+Animations.swift
//  TAS_ERP
//
//  Created by vitalii on 7/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension UIView {

    // MARK: - Animations
    
    static func animate(_ animations: @escaping () -> Void, duration: TimeInterval = Animations.fadeDuration, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration,
                       delay: 0.0,
                       usingSpringWithDamping: Animations.damping,
                       initialSpringVelocity: Animations.initialVelocity,
                       options: [.curveEaseInOut, .allowAnimatedContent],
                       animations: animations,
                       completion: completion)
    }

    static func animate(_ animations: @escaping () -> Void, with delay: TimeInterval) {
        UIView.animate(withDuration: Animations.fadeDuration,
                       delay: delay,
                       usingSpringWithDamping: Animations.damping,
                       initialSpringVelocity: Animations.initialVelocity,
                       options: [.curveEaseInOut, .allowAnimatedContent],
                       animations: animations,
                       completion: nil)
    }

    static func animateTransition(with view: UIView, animations: @escaping () -> Void,
                                  duration: TimeInterval = Animations.transitionDuration,
                                  completion: ((Bool) -> Void)? = nil) {
        UIView.transition(with: view,
                          duration: duration,
                          options: .transitionCrossDissolve,
                          animations: animations,
                          completion: completion)
    }

    func fadeIn(after delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil) {
        alpha = Defaults.ViewAlpha.hidden
        UIView.animate(withDuration: Animations.fadeDuration, delay: delay, options: .transitionCrossDissolve, animations: { [weak self] in
            self.map({ $0.alpha = Defaults.ViewAlpha.visible })
            }, completion: completion)
    }

    func fadeOut(after delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: Animations.transitionDuration,
                       delay: delay, options: .transitionCrossDissolve, animations: { [weak self] in
                        self.map({ $0.alpha = Defaults.ViewAlpha.hidden })
            }, completion: completion)
    }

    func animateIn(after delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil) {
        transform = Animations.dismissTransform
        alpha = Defaults.ViewAlpha.hidden
        UIView.animate(withDuration: Animations.fadeDuration,
                       delay: delay,
                       usingSpringWithDamping: Animations.damping,
                       initialSpringVelocity: Animations.initialVelocity,
                       options: [.curveEaseInOut],
                       animations: { [weak self] in
                        self?.transform = .identity
                        self?.alpha = Defaults.ViewAlpha.visible
        }, completion: nil)
    }

    func animatePopUp(after delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil) {
        transform = Animations.translateDownTransform
        alpha = Defaults.ViewAlpha.hidden
        UIView.animate(withDuration: Animations.duration,
                       delay: delay,
                       usingSpringWithDamping: Animations.damping,
                       initialSpringVelocity: Animations.initialVelocity,
                       options: [.curveEaseInOut],
                       animations: { [weak self] in
                        self?.transform = .identity
                        self?.alpha = Defaults.ViewAlpha.visible
        }, completion: completion)
    }
    
    func animatePopOut(after delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: Animations.duration,
                       delay: delay,
                       usingSpringWithDamping: Animations.damping,
                       initialSpringVelocity: Animations.initialVelocity,
                       options: [.curveEaseInOut],
                       animations: { [weak self] in
                        self?.transform = Animations.translateDownTransform
                        self?.alpha = Defaults.ViewAlpha.hidden
        }, completion: completion)
    }

    func slideIn(from: SlideDirection, after delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil) {
        switch from {
        case .left: transform = Animations.translateLeftTransform
        case .right: transform = Animations.translateRightTransform
        case .bottom: transform = Animations.translateDownTransform
        case .up: transform = Animations.translateUpTransform
        }
        alpha = Defaults.ViewAlpha.hidden
        UIView.animate(withDuration: Animations.duration,
                       delay: delay,
                       usingSpringWithDamping: Animations.damping,
                       initialSpringVelocity: Animations.initialVelocity,
                       options: [.curveEaseInOut, .transitionCrossDissolve, .allowAnimatedContent],
                       animations: { [weak self] in
                        self?.transform = .identity
                        self?.alpha = Defaults.ViewAlpha.visible
        }, completion: nil)
    }

    func shake(repeatCount: Float = Animations.shakeRepeatCount) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = Animations.shakeDuration
        animation.repeatCount = repeatCount
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: center.x - Animations.shakeOffset, y: center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: center.x + Animations.shakeOffset, y: center.y))
        layer.add(animation, forKey: "position")
    }

    func shakeRotate() {
        let translation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        translation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        translation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0]

        let rotation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        rotation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0].map { (degrees: Double) -> Double in
            let radians: Double = (.pi * degrees) / 180.0
            return radians
        }

        let shakeGroup: CAAnimationGroup = CAAnimationGroup()
        shakeGroup.animations = [translation, rotation]
        shakeGroup.duration = 0.7
        self.layer.add(shakeGroup, forKey: "shakeIt")
    }

    func pulse() {
        layer.removeAllAnimations()
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.duration = Animations.duration
        animation.repeatCount = .infinity
        animation.autoreverses = true
        animation.fromValue = 1
        animation.toValue = 1.1
        layer.add(animation, forKey: "transform.scale")
    }
}

enum SlideDirection {

    case left
    case right
    case bottom
    case up
}

extension SlideDirection {
    
    var dismissTransform: CGAffineTransform {
        switch self {
        case .left: return Animations.translateLeftTransform
        case .right: return Animations.translateRightTransform
        case .bottom: return Animations.translateDownTransform
        case .up: return Animations.translateUpTransform
        }
    }
}

// MARK: - Constants

enum Animations {

    static var duration: TimeInterval { return 0.5 }
    static var transitionDuration: TimeInterval { return 0.35 }
    static var fadeDuration: TimeInterval { return 0.8 }
    static var damping: CGFloat { return 0.85 }
    static var initialVelocity: CGFloat { return 0.5 }
    static var shakeDuration: TimeInterval { return 0.1 }
    static var shakeRepeatCount: Float { return 2 }
    static var shakeOffset: CGFloat { return 10.0 }

    static var dismissTransform: CGAffineTransform { return translateDownTransform.concatenating(CGAffineTransform(scaleX: 0, y: 0)) }
    static var translateDownTransform: CGAffineTransform { return CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.size.height) }
    static var translateLeftTransform: CGAffineTransform { return CGAffineTransform(translationX: -UIScreen.main.bounds.size.width, y: 0) }
    static var translateRightTransform: CGAffineTransform { return CGAffineTransform(translationX: UIScreen.main.bounds.size.width, y: 0) }
    static var translateUpTransform: CGAffineTransform { return CGAffineTransform(translationX: 0, y: -UIScreen.main.bounds.size.height) }
}
