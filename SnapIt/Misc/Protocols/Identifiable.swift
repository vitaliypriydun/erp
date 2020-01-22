//
//  Identifiable.swift
//  HYPR
//
//  Created by vitalii on 7/23/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit
import ObjectMapper

protocol Identifiable: Hashable, Equatable {

    var id: Int? { get set }
}

// MARK: - Hashable
    
extension Identifiable {

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: - Equatable
    
extension Identifiable {

    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}
