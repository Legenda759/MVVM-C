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
    let name: String?
    let secondName: String?
    let phoneNumber: String?
    let email: String?
}

extension User {
    static var logins = User(
        login: "Legenda_759",
        password: "00000759",
        name: "Abdurahmon",
        secondName: "Hursanboyev",
        phoneNumber: "+998 (90) 000 07 59",
        email: "Abdurahmon759@icloud.com"
    )
}
