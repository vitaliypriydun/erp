//
//  Module.swift
//  Quickly
//
//  Created by Евгений on 2/13/19.
//  Copyright © 2019 yevgeniy. All rights reserved.
//

import Foundation

class Module<PresenterType, InterfaceType> {
    
    private(set) var presenter: PresenterType
    private(set) var interface: InterfaceType
    
    init(presenter: PresenterType, interface: InterfaceType) {
        self.presenter = presenter
        self.interface = interface
    }
}
