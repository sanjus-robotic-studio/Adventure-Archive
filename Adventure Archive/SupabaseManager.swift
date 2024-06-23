//
//  SupabaseManager.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import Foundation
import Supabase

struct AppUser{
    let uid: String
    let email: String?
}

class AuthManager{
    
    static let shared = AuthManager()
    
    private init() {}
    
    let client = SupabaseClient(
        supabaseURL: URL(string: "https://yppdruwanhkzcwkgozig.supabase.co")!,
        supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlwcGRydXdhbmhremN3a2dvemlnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkwNDQ5NzEsImV4cCI6MjAzNDYyMDk3MX0.QMNMbY18r4z0II_9e_YeVF26t6oe-KqvE8EIomCTUMY"
    )
    
    func getCurrentSession() async throws -> AppUser {
        let session = try await client.auth.session
        print(session)
        return AppUser(uid: session.user.id.uuidString, email: session.user.email)
    }
    
    //MARK: SignIN
    func signInWithEmail(email:String, password:String) async throws -> AppUser {
        let session = try await client.auth.signIn(email: email, password: password)
        return AppUser(uid: session.user.id.uuidString, email: session.user.email)
    }
    
    //MARK: Registration
    func signUpWithEmail(email:String, password:String) async throws -> AppUser {
        let regAuthResponse = try await client.auth.signUp(email: email, password: password)
        guard let session = regAuthResponse.session else{
            print("No session while registering User")
            throw NSError()
        }
        return AppUser(uid: session.user.id.uuidString, email: session.user.email)
    }
}
