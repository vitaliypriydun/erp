//
//  LoginFailureViewController.swift
//  HYPR
//
//  Created by vitalii on 6/13/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

class LoginFailureViewController: UIViewController {
    
    // MARK: - Public
    
    var presenter: LoginFailureOutput?
    
    // MARK: - Private
    
    @IBOutlet private weak var applicationNameLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var messageLabel: UILabel!

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    // MARK: - Private
    
    private func setupTexts() {
        applicationNameLabel.text = Localization.App.title
    }
}

// MARK: - LoginFailureInterface
    
extension LoginFailureViewController: LoginFailureInterface {

    func set(title: String) {
        titleLabel.text = title
    }

    func set(message: String) {
        messageLabel.text = message
    }

    func animateIn() {
        [applicationNameLabel, titleLabel, messageLabel].forEach({ $0?.fadeIn() })
    }
}
