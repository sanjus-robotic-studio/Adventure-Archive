//
//  LoginView.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import SwiftUI
import Supabase

struct LoginView: View {
  @Environment(\.dismiss) var dismiss
  @EnvironmentObject var viewModal: LoginViewModal
    
  @State var email = ""
  @State var password = ""
  @State var isLoading = false
  @State var isRegistrationPresented = false
  @State var result: Result<Void, Error>?
    
  @Binding var appUser: AppUser?

    var body: some View {
        NavigationStack{
            ZStack{
                
                VStack(spacing: 20, content: {
                    
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.teal)
                    
                    
                    Image("Login")
                        .resizable()
                        .frame( width: 300,height: 300)
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                        
                    
                        if email.isEmpty{
                            Text("Email Address")
                                .foregroundColor(.teal)
                                .font(.title3)
                                .padding(.leading)
                                
                        }
                        
                        TextField("", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .shadow(color: Color.black.opacity(50), radius: 60)
                            .cornerRadius(50)
                            .foregroundStyle(.teal)
                            .foregroundColor(.teal)
                            .overlay{
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(.teal))
                            }
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        
                    })
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                        
                    
                        if password.isEmpty{
                            Text("Password")
                                .foregroundColor(.teal)
                                .font(.title3)
                                .padding(.leading)
                                
                        }
                        
                        SecureField("", text: $password)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .shadow(color: Color.black.opacity(50), radius: 60)
                            .cornerRadius(50)
                            .foregroundStyle(.teal)
                            .foregroundColor(.teal)
                            .overlay{
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(.teal))
                            }
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        
                    })
                    Button {
                        Task{
                            do{
                              let appUser = try await viewModal.signUp(email: email, password: password)
                                self.appUser = appUser
                            } catch{
                                print("issue with SignIn")
                            }
                        }
                    }
                    
                label: {
                        Text("Login")
                            .foregroundColor(.white)
                    }
                .font(.title3)
                .padding()
                .frame(maxWidth: .infinity)
                .shadow(color: Color.black.opacity(50), radius: 60)
                .cornerRadius(50)
                .foregroundColor(.white)
                .foregroundStyle(.white)
                .background{
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.teal)
                }
                
                    HStack{
                        Text("New User?")
                        Button {
                            isRegistrationPresented.toggle()
                        } label: {
                            Text("Sign Up Here")
                                .foregroundColor(.teal)
                        }
                        .sheet(isPresented: $isRegistrationPresented, content: {
                            SignUpView(appUser: $appUser)
                                .environmentObject(viewModal)
                        })

                    }
                

                    
                    
                })
                .padding()
            }
        }
    }
}
