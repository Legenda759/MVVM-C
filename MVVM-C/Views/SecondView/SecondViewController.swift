//
//  SecondViewController.swift
//  MVVM-C
//
//  Created by Legenda_759 on 06/12/22.
//

import UIKit

class SecondViewController: UIViewController, SecondViewInstaller {
    
    var mainView: UIView { view }
    
    var login: UILabel!
    var password: UILabel!
    var name: UILabel!
    var secondName: UILabel!
    var phoneNumber: UILabel!
    var email: UILabel!
    var stackView: UIStackView!
    
    var viewModel: SecondViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        
        if let viewModel = viewModel {
            if let user = viewModel.user {
                if let login = user.login, let password = user.password, let name = user.name, let secondName = user.secondName, let phoneNumber = user.phoneNumber, let email = user.email {
                    self.login.text = "Login: \(login)"
                    self.password.text = "Password: \(password)"
                    self.name.text = "Name: \(name)"
                    self.secondName.text = "SecondName: \(secondName)"
                    self.phoneNumber.text = "Phone: \(phoneNumber)"
                    self.email.text = "Email: \(email)"
                }
            }
        }
        
    }
    
    

}
