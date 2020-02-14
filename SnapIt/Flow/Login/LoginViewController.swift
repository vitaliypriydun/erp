//
//  LoginViewController.swift
//  TAS_ERP
//
//  Created by vitalii on 5/10/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit
import SKTextInputsManager
import ChameleonFramework

class LoginViewController: UIViewController {
    
    // MARK: - Public
    
    var presenter: LoginOutput?
    
    // MARK: - Private
    
    @IBOutlet private weak var emailPostfixLabel: UILabel!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var forgotPasswordButton: UIButton!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private weak var googleButton: UIButton!
    @IBOutlet private weak var orLabel: UILabel!
    @IBOutlet private weak var emailView: UIView!
    @IBOutlet private weak var passwordView: UIView!
    @IBOutlet private weak var orView: UIView!
    @IBOutlet private weak var googleView: UIView!
    @IBOutlet private weak var loginActiveConstraint: NSLayoutConstraint!
    @IBOutlet private weak var loginLoadingConstraint: NSLayoutConstraint!
    @IBOutlet private weak var textInputsManager: TextInputsManager!

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        setupTexts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter?.viewWillDisappear()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginButton.backgroundColor = .init(gradientStyle: .leftToRight, withFrame: loginButton.bounds,
                                            andColors: GradientFactory.makeButtonGradient())
    }

    // MARK: - Actions
    
    @IBAction private func loginAction(_ sender: Any) {
        let login = (emailTextField.text ?? "") + Defaults.Strings.emailDomen
        let password = passwordTextField.text ?? ""
        view.endEditing(true)
        presenter?.viewTriggeredLoginEvent(with: login, password: password)
    }

    @IBAction private func resetPasswordAction(_ sender: Any) {
        presenter?.viewTriggeredForgotPasswordEvent()
    }

    @IBAction private func tapEmailAction(_ sender: Any) {
        presenter?.viewTriggeredEmailEvent()
    }
    
    @IBAction private func loginWithGoogleAction(_ sender: Any) {
        presenter?.viewTriggeredGoogleEvent()
    }
    
    @IBAction func hideButtonTouched(_ sender: Any) {
        passwordTextField.isSecureTextEntry = false
    }
    
    @IBAction func hideButtonReleased(_ sender: Any) {
        passwordTextField.isSecureTextEntry = true
    }
    
    // MARK: - Private
    
    private func setupTexts() {
        emailTextField.placeholder = Localization.Login.email
        passwordTextField.placeholder = Localization.Login.password
        loginButton.setTitle(Localization.Buttons.logIn, for: .normal)
        forgotPasswordButton.setAttributedTitle(AttributedTextFactory.makeForgotPasswordText(), for: .normal)
        googleButton.setTitle(Localization.Login.google, for: .normal)
        orLabel.text = Localization.Login.or
        loginLabel.text = Localization.Login.title
    }
}

// MARK: - LoginInterface
    
extension LoginViewController: LoginInterface {
    
    var animatableViews: [UIView] {
        return [loginLabel, emailView, passwordView, forgotPasswordButton, loginButton, orView, googleView]
    }
    
    func setLoginButtonEnabled(_ enabled: Bool) {
        loginButton.isUserInteractionEnabled = enabled
    }

    func startLoadingAnimation() {
        activityIndicator.startAnimating()
        loginButton.isUserInteractionEnabled = false
        loginButton.setTitle(String(), for: .normal)
        UIView.animate({ [weak self] in
            self?.loginActiveConstraint.priority = .defaultLow
            self?.loginLoadingConstraint.priority = .defaultHigh
            self?.view.layoutIfNeeded()
        })
    }

    func endLoadingAnimation() {
        activityIndicator.stopAnimating()
        UIView.animate({ [weak self] in
            self?.loginActiveConstraint.priority = .defaultHigh
            self?.loginLoadingConstraint.priority = .defaultLow
        }, completion: { [weak self] _ in
            self?.loginButton.setTitle(Localization.Buttons.logIn, for: .normal)
            self?.loginButton.isUserInteractionEnabled = true
        })
    }

    func showEmailIsInvalid() {
        emailView.shake()
    }

    func showCredentialsAreInvalid() {
        emailView.shake()
        passwordView.shake()
    }
    
    func startEditingEmail() {
        emailTextField.becomeFirstResponder()
    }
}
