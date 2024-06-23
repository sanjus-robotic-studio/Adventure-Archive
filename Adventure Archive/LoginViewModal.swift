//
//  LoginViewModal.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 23/06/24.
//

import Foundation

@MainActor
class LoginViewModal: ObservableObject {
    func isFormValid(email:String, password: String) -> Bool{
        guard email.isValidEmail(email), password.count < 7 else{
            return false
        }
        return true
    }
    
    func signUp(email: String, password: String) async throws -> AppUser{
        if isFormValid(email: email, password: password){
            return try await AuthManager.shared.signUpWithEmail(email: email, password: password)
        } else{
            print("Registration Form is Invalid")
            throw NSError()
        }
        
    }
    
    func signIn(email: String, password: String) async throws -> AppUser{
        if isFormValid(email: email, password: password){
            return try await AuthManager.shared.signInWithEmail(email: email, password: password)
        } else{
            print("sign in Form is Invalid")
            throw NSError()
        }
    }
}

extension String{
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
