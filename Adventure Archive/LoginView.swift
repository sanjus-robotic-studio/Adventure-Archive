//
//  LoginView.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import SwiftUI
import Supabase

struct LoginView: View {
  @State var email = ""
  @State var isLoading = false
  @State var result: Result<Void, Error>?

    var body: some View {
        NavigationStack{
            ZStack{
                Color(.white)
                VStack(spacing: 20, content: {
                    
                    Text("All Begins Here!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    
                    Image("Login")
                        .resizable()
                        .frame( width: 300,height: 300)
                    
                    TextField("Email", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.teal.opacity(15))
                        .shadow(color: Color.black.opacity(50), radius: 60)
                        .cornerRadius(50)
                    
                    
                    
                })
                .padding()
            }
        }
    }
}

#Preview {
    LoginView()
}
