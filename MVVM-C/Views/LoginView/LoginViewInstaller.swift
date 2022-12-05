//
//  LoginViewInstaller.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import UIKit
import SnapKit

protocol LoginViewInstaller: ViewInstaller {
    var name: UILabel! { get set }
    var login: UILabel! { get set }
    var loginTextField: UITextField! { get set }
    var password: UILabel! { get set }
    var passwordTextField: UITextField! { get set }
    var loginButton: UIButton! { get set }
    var status: UILabel! { get set }
    var loginView: UIStackView! { get set }
    var loginStackView: UIStackView! { get set }
    var passwordStackView: UIStackView! { get set }
    var loginPasswordStackView: UIStackView! { get set }
}

extension LoginViewInstaller {
    
    func initSubviews() {
        
        /// mainView
        mainView.backgroundColor = .white
        
        /// name
        name = UILabel()
        name.config(
            font: UIFont.boldSystemFont(ofSize: 25),
            color: .black,
            textAlignment: .center
        )
        name.text = "Login Screen"
        
        /// login
        login = UILabel()
        login.config(
            font: UIFont.systemFont(ofSize: 15),
            color: .lightGray,
            textAlignment: .left
        )
        login.text = "Login"
        
        /// loginTextField
        loginTextField = UITextField()
        loginTextField.config(
            borderStyle: .roundedRect,
            placeholder: "Enter your login",
            textAlignment: .left,
            isSecureTextEntry: false
        )
        
        /// loginStackView
        loginStackView = UIStackView()
        loginStackView.config(
            axis: .vertical,
            spacing: 0.0,
            alignment: .fill,
            distribution: .fillEqually
        )
        [login, loginTextField].forEach { loginStackView.addArrangedSubview($0)}
        
        /// password
        password = UILabel()
        password.config(
            font: UIFont.systemFont(ofSize: 15),
            color: .lightGray,
            textAlignment: .left
        )
        password.text = "Password"
        
        /// passwordTextField
        passwordTextField = UITextField()
        passwordTextField.config(
            borderStyle: .roundedRect,
            placeholder: "Enter your password",
            textAlignment: .left,
            isSecureTextEntry: true
        )
        
        /// passwordStackView
        passwordStackView = UIStackView()
        passwordStackView.config(
            axis: .vertical,
            spacing: 0.0,
            alignment: .fill,
            distribution: .fillEqually
        )
        [password, passwordTextField].forEach { passwordStackView.addArrangedSubview($0)}
        
        /// loginPasswordStackView
        loginPasswordStackView = UIStackView()
        loginPasswordStackView.config(
            axis: .vertical,
            spacing: 10.0,
            alignment: .fill,
            distribution: .fillEqually
        )
        [loginStackView, passwordStackView].forEach { loginPasswordStackView.addArrangedSubview($0)}
        
        /// loginButton
        loginButton = UIButton(type: .system)
        loginButton.config(
            backgroundColor: .systemBlue,
            title: "Login",
            titleColor: .white,
            cornerRadius: 10.0
        )
        
        /// status
        status = UILabel()
        status.config(
            font: UIFont.systemFont(ofSize: 15),
            color: .gray,
            textAlignment: .center
        )
        
        /// loginView
        loginView = UIStackView()
        loginView.config(
            axis: .vertical,
            spacing: 40.0,
            alignment: .center,
            distribution: nil
        )
        [name, loginPasswordStackView, loginButton].forEach { loginView.addArrangedSubview($0)}
        
    }
    
    func embedSubviews() {
        mainView.addSubviews(
            loginView,
            status
        )
    }

    func addSubviewsConstraints() {
        
        loginView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.left.right.equalToSuperview().inset(20)
        }
        
        loginButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
        loginPasswordStackView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
        }
        
        status.snp.makeConstraints { make in
            make.top.equalTo(loginView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
    }
    
}
