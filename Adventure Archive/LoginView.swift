//
//  LoginView.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import SwiftUI
import Supabase

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            Image(systemName: "book")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 50)

            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding(.bottom, 20)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding(.bottom, 20)

            Button(action: {
                login()
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5)
            }

            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
        .padding()
    }

    func login() {
        Task {
            do {
                let result = try await SupabaseManager.shared.client.auth.signIn(email: email, password: password)
                if let user = result.user {
                    print("User signed in: \(user.id)")
                    // Handle successful login
                }
            } catch {
                alertMessage = error.localizedDescription
                showingAlert = true
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

#Preview {
    LoginView()
}
