//
//  CollectionViewLayoutsFactory.swift
//  HYPR
//
//  Created by vitalii on 5/15/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

class CollectionViewLayoutsFactory {
    
}

// MARK: - Constants
    
private extension CGFloat {

    static let sideItemAlpha: CGFloat = 0.3
    static let sideItemScale: CGFloat = 0.6
    static let spacing: CGFloat = 10.0
    static let visible: CGFloat = 1.0
    static var dashboardCellOverlap: CGFloat { return 50 * Defaults.DeviceRatio.width }
    static var bookingCellOverlap: CGFloat { return 38 * Defaults.DeviceRatio.width }
    static var eventCellOverlap: CGFloat { return 70 * Defaults.DeviceRatio.width }
}

private extension CGSize {

    static var dashboardCellSize: CGSize { return CGSize(width: 158 * Defaults.DeviceRatio.width, height: 240 * Defaults.DeviceRatio.height) }
    static var bookingCellSize: CGSize { return CGSize(width: 120 * Defaults.DeviceRatio.width, height: 150 * Defaults.DeviceRatio.height) }
    static var eventCellSize: CGSize { return CGSize(width: 275 * Defaults.DeviceRatio.width, height: 343 * Defaults.DeviceRatio.height) }
    static var photoCellSize: CGSize { return CGSize(width: UIScreen.main.bounds.width - 20, height: 293) }
}
