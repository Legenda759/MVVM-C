//
//  ViewModel.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import Foundation

class LoginViewModel {
    
    var statusText = Dynamic("")
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in failed."
        } else {
            statusText.value = "You succesfully logged in"
        }
    }
    
}
