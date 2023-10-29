//
//  LoginView.swift
//  HelloValidation
//
//  Created by Seymen Nadir Elmas on 29.10.2023.
//

import SwiftUI

struct LoginFormError {
    var email: String = ""
    var password: String = ""
    
    mutating func clearForm() {
        email = ""
        password = ""
    }
}

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var loginFormError = LoginFormError()
    
    var isFormValid: Bool {
        
        loginFormError.clearForm()
          
        if email.isEmpty {
            loginFormError.email = "Email is required!"
        } else if !email.isValidEmail {
            loginFormError.email = "Email is not valid format!"
        }
        if password.isEmpty {
            loginFormError.password = "Password is required!"
        }
        
        return loginFormError.email.isEmpty && loginFormError.password.isEmpty
    }
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            Text(loginFormError.email)
                .font(.caption)
            SecureField("Password", text: $password)
            Text(loginFormError.password)
                .font(.caption)
            Button("Login") {
                if isFormValid {
                    // submit the form
                }
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
