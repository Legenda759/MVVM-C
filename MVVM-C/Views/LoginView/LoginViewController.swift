//
//  ViewController.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import UIKit

class LoginViewController: UIViewController, LoginViewInstaller {
    
    var mainView: UIView { view }
    
    var name: UILabel!
    var login: UILabel!
    var loginTextField: UITextField!
    var password: UILabel!
    var passwordTextField: UITextField!
    var loginButton: UIButton!
    var status: UILabel!
    var loginView: UIStackView!
    var loginStackView: UIStackView!
    var passwordStackView: UIStackView!
    var loginPasswordStackView: UIStackView!
    var simpleIndicator: UIActivityIndicatorView!
    
    var viewModel =  LoginViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
//        status.text = viewModel.statusText.value
        bindViewModel()
    }

    @objc func loginTapped() {
        simpleIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.simpleIndicator.stopAnimating()
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        viewModel.userButtonPressed(
            login: loginTextField.text ?? "",
            password: passwordTextField.text ?? ""
        )
        
        
    }
    
    func bindViewModel() {
        
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.status.text = statusText
            }
        }
        
        viewModel.statusColor.bind { statusColor in
            self.status.textColor = statusColor
        }
        
    }

}

