//
//  Constants.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

typealias SuccessHandler = (Bool) -> Void
typealias ErrorHandler = (Error?) -> Void
typealias ProgressHandler = (Bool, CGFloat) -> Void
typealias NoParametersHandler = () -> Void

typealias Credentials = (login: String, password: String)

typealias Json = [String: Any]

typealias CollectionViewCellType = UICollectionViewCell & ConfigurableCell & ReusableCell
typealias TableViewCellType = UITableViewCell & ConfigurableCell & ReusableCell

enum Defaults {

    enum Angle {

        static var degreesInRadians: CGFloat { return CGFloat(180.0 / .pi) }
        static var rotationAngle: CGFloat { return 90.0 }
    }

    enum Buttons {

        static var defaultCornerRadius: CGFloat { return 4.0 }
    }

    enum ViewAlpha {

        static var hidden: CGFloat { return 0.0 }
        static var disabled: CGFloat { return 0.2 }
        static var visible: CGFloat { return 1.0 }
    }

    enum Strings {
        
        static let emailDomen = "@theappsolutions.com"
    }
    
    enum DeviceRatio {

        static var width: CGFloat {
            return UIScreen.main.bounds.size.width / 375
        }

        static var height: CGFloat {
            return UIScreen.main.bounds.size.height / 667
        }
    }
}

extension Int {

    static let secondsPerMinute: Int = 60
}
