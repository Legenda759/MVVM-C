//
//  ViewModel.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import UIKit

class LoginViewModel {
    
    weak var coordinator: MainCoordinator?
    
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins.login || password != User.logins.password {
            statusText.value = "Log in failed."
            statusColor.value = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.statusText.value = ""
                
            }
        } else {
            statusText.value = "You succesfully logged in"
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.coordinator?.pushMainViewController()
                self.statusText.value = ""
            }
        }
    }
    
}
