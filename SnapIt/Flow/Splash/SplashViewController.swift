//
//  SplashViewController.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 20.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    var presenter: SplashOutput?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		presenter?.viewDidAppear()
	}
}

// MARK: - SplashViewControllerInterface

extension SplashViewController: SplashInterface {
    
}
