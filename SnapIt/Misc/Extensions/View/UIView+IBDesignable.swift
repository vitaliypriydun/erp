//
//  UIView.swift
//  HYPR
//
//  Created by vitalii on 5/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - IBInspectable
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            return layer.borderColor?.uiColor
        }
    }

    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }

    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }

    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }

    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    // MARK: - Mask
        
    func round(corners: CACornerMask, radius: CGFloat) {
        layer.cornerRadius = radius
        layer.maskedCorners = corners
    }
    
    // MARK: - Round
        
    func rounded() {
        layer.cornerRadius = bounds.midX
        layer.masksToBounds = true
    }

    // MARK: - Utils
    
    func rotate(degrees: CGFloat = Defaults.Angle.rotationAngle, animated: Bool = false) {
        let radians = degrees / Defaults.Angle.degreesInRadians
        if animated {
            UIView.animate(withDuration: 0.2) {
                self.transform = CGAffineTransform(rotationAngle: radians)
            }
        } else {
            transform = CGAffineTransform(rotationAngle: radians)
        }
    }
}

private extension CGColor {
    
    var uiColor: UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}
