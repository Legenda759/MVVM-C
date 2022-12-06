//
//  SecondViewInstaller.swift
//  MVVM-C
//
//  Created by Legenda_759 on 06/12/22.
//

import UIKit

protocol SecondViewInstaller: ViewInstaller {
    var login: UILabel! { get set }
    var password: UILabel! { get set }
    var name: UILabel! { get set }
    var secondName: UILabel! { get set }
    var phoneNumber: UILabel! { get set }
    var email: UILabel! { get set }
    var stackView: UIStackView! { get set }
}

extension SecondViewInstaller {
    
    func initSubviews() {
        
        /// mainView
        mainView.backgroundColor = .white
        
        /// login
        login = UILabel()
        login.config(
            font: UIFont.systemFont(ofSize: 17),
            color: UIColor.black,
            textAlignment: .left
        )
        
        /// password
        password = UILabel()
        password.config(
            font: UIFont.systemFont(ofSize: 17),
            color: UIColor.black,
            textAlignment: .left
        )
        
        /// name
        name = UILabel()
        name.config(
            font: UIFont.systemFont(ofSize: 17),
            color: UIColor.black,
            textAlignment: .left
        )
        
        /// secondName
        secondName = UILabel()
        secondName.config(
            font: UIFont.systemFont(ofSize: 17),
            color: UIColor.black,
            textAlignment: .left
        )
        
        /// phoneNumber
        phoneNumber = UILabel()
        phoneNumber.config(
            font: UIFont.systemFont(ofSize: 17),
            color: UIColor.black,
            textAlignment: .left
        )
        
        /// email
        email = UILabel()
        email.config(
            font: UIFont.systemFont(ofSize: 17),
            color: UIColor.black,
            textAlignment: .left
        )
        
        stackView = UIStackView()
        stackView.config(
            axis: .vertical,
            spacing: 20.0,
            alignment: .fill,
            distribution: .fillEqually
        )
        [login, password, name, secondName, phoneNumber, email].forEach { stackView.addArrangedSubview($0)}
        
    }
    
    func embedSubviews() {
        mainView.addSubviews(
            stackView
        )
    }
    
    func addSubviewsConstraints() {
        stackView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.left.right.equalToSuperview().inset(20)
        }
    }
    
}

