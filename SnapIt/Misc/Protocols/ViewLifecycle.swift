//
//  ViewLifecycle.swift
//  TAS_ERP
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
    
    func viewDidAwakeFromNib()
    
    func viewDidSetPresenter()
}

extension ViewLifecycle {

    func viewDidLoad() { }
    func viewWillAppear() { }
    func viewDidAppear() { }
    func viewWillDisappear() { }
    func viewDidDisappear() { }
    func viewDidAwakeFromNib() { }
    func viewDidSetPresenter() { }
}
