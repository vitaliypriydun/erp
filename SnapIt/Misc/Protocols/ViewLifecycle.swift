//
//  ViewLifecycle.swift
//  HYPR
//
//  Created by vitalii on 5/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation

protocol ViewLifecycle {

    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

extension ViewLifecycle {

    func viewDidLoad() { }

    func viewWillAppear() { }

    func viewDidAppear() { }

    func viewWillDisappear() { }

    func viewDidDisappear() { }
}
