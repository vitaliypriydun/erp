//
//  ResetPasswordViewController.swift
//  SnapIt
//
//  Created by Vitaliy Priydun on 23.01.2020.
//  Copyright © 2020 TAS. All rights reserved.
//

import UIKit
import SKTextInputsManager

class ResetPasswordViewController: UIViewController {

    var presenter: ResetPasswordOutput?

  // MARK: - Private
    
    @IBOutlet private weak var emailPostfixLabel: UILabel!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var restoreButton: UIButton!
    @IBOutlet private weak var emailView: UIView!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private var textInputsManager: TextInputsManager!
    
    @IBOutlet private weak var buttonActiveConstraint: NSLayoutConstraint!
    @IBOutlet private weak var buttonLoadingConstraint: NSLayoutConstraint!

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        setupTexts()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidAppear()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter?.viewDidDisappear()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        restoreButton.backgroundColor = .init(gradientStyle: .leftToRight, withFrame: restoreButton.bounds,
                                            andColors: GradientFactory.makeButtonGradient())
    }

    // MARK: - Actions
    
    @IBAction private func resetAction(_ sender: Any) {
        let login = (emailTextField.text ?? "") + Defaults.Strings.emailDomen
        view.endEditing(true)
        presenter?.viewTriggeredRestoreEvent(with: login)
    }
    
    @IBAction private func loginAction(_ sender: Any) {
        presenter?.viewTriggeredLoginEvent()
    }
    
    // MARK: - Private
    
    private func setupTexts() {
        emailTextField.placeholder = Localization.Login.email
        restoreButton.setTitle(Localization.ResetPassword.title, for: .normal)
        titleLabel.text = Localization.ResetPassword.title
        subtitleLabel.text = Localization.ResetPassword.subtitle
    }
}

// MARK: - ResetPasswordInterface

extension ResetPasswordViewController: ResetPasswordInterface {
    
    func startLoading() {
        activityIndicator.startAnimating()
        restoreButton.isUserInteractionEnabled = false
        restoreButton.setTitle(String(), for: .normal)
        UIView.animate({ [weak self] in
            self?.buttonActiveConstraint.priority = .defaultLow
            self?.buttonLoadingConstraint.priority = .defaultHigh
            self?.view.layoutIfNeeded()
        })
    }
    
    func endLoading() {
        activityIndicator.stopAnimating()
        UIView.animate({ [weak self] in
            self?.buttonActiveConstraint.priority = .defaultHigh
            self?.buttonLoadingConstraint.priority = .defaultLow
        }, completion: { [weak self] _ in
            self?.restoreButton.isUserInteractionEnabled = true
            self?.restoreButton.setTitle(Localization.ResetPassword.subtitle, for: .normal)
        })
    }
    
    func showEmailIsInvalid() {
        emailView.shake()
    }
}
