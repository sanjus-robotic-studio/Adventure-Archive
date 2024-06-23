//
//  SignUpView.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 23/06/24.
//

import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    @State var isLoading = false
    @State var isRegistrationPresented = false
    @State var result: Result<Void, Error>?
    var body: some View {
        ZStack{
            
            VStack(spacing: 20, content: {
                
                Text("Let's Get You Started")
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
                    isLoading.toggle()
                }
                
            label: {
                    Text("Sign Up")
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
                    Text("Existing User?")
                    NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)) {
                            Text("Sign In Here")
                                .foregroundColor(.teal)
                        
                    }
                }

                
                
            })
            .padding()
        }
    }
}


#Preview {
    SignUpView()
}
