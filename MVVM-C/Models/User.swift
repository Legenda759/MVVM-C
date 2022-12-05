//
//  User.swift
//  MVVM-C
//
//  Created by Legenda_759 on 02/12/22.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "Legenda_759", password: "00000759")
    ]
}
