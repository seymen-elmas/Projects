//
//  LoginFromError.swift
//  HelloValidation
//
//  Created by Seymen Nadir Elmas on 29.10.2023.
//

import Foundation
struct LoginFormError {
    var email: String = ""
    var password: String = ""
    
    mutating func clearForm() {
        email = ""
        password = ""
    }
}
