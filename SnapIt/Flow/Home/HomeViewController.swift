//
//  HomeViewController.swift
//  ERP
//
//  Created by Vitaliy Priydun on 17.02.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var presenter: HomeOutput?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - HomeInterface

extension HomeViewController: HomeInterface {
    
    var animatableViews: [UIView] { return [] }
}
