//
//  LoginViewController.swift
//  HYPR
//
//  Created by vitalii on 5/10/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit
import SKTextInputsManager

class LoginViewController: UIViewController {
    
    // MARK: - Public
    
    var presenter: LoginOutput?
    
    // MARK: - Private
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var forgotPasswordButton: UIButton!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private var textInputsManager: TextInputsManager!

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

    // MARK: - Actions
    
    @IBAction private func loginAction(_ sender: Any) {
        let login = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        view.endEditing(true)
        presenter?.viewTriggeredLoginEvent(with: login, password: password)
    }

    @IBAction private func resetPasswordAction(_ sender: Any) {
        presenter?.viewTriggeredForgotPasswordEvent()
    }

    // MARK: - Private
    
    private func setupTexts() {
        titleLabel.text = Localization.App.title
        emailTextField.placeholder = Localization.Login.email

        passwordTextField.placeholder = Localization.Login.password

        loginButton.setTitle(Localization.Buttons.logIn, for: .normal)
    }

}

// MARK: - LoginInterface
    
extension LoginViewController: LoginInterface {
    
    func setLoginButtonEnabled(_ enabled: Bool) {
        let backgroundColor = enabled ? Asset.Colors.black.color : Asset.Colors.white.color
        let titleColor = enabled ? Asset.Colors.white.color : Asset.Colors.grey155.color
        let borderColor = enabled ? UIColor.clear : Asset.Colors.grey155.color
        loginButton.backgroundColor = backgroundColor
        loginButton.setTitleColor(titleColor, for: .normal)
        loginButton.borderColor = borderColor
        loginButton.isUserInteractionEnabled = enabled
    }

    func startLoadingAnimation() {
        activityIndicator.startAnimating()
        loginButton.isUserInteractionEnabled = false
    }

    func endLoadingAnimation() {
        activityIndicator.stopAnimating()
        loginButton.isUserInteractionEnabled = true
    }

    func showEmailIsInvalid() {
        emailTextField.shake()
    }

    func showCredentialsAreInvalid() {
        emailTextField.shake()
        passwordTextField.shake()
    }
}

// MARK: - UITextFieldDelegate
    
extension LoginViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text,
            let textRange = Range(range, in: text) {
            let updatedText = text.replacingCharacters(in: textRange,
                                                     with: string)

            if textField == emailTextField {
                presenter?.viewEnteredTexts(updatedText, passwordTextField.text)
            }

            if textField == passwordTextField {
                presenter?.viewEnteredTexts(emailTextField.text, updatedText)
            }
        }
        return true
    }
}
