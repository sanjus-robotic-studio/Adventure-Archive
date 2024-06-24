//
//  UserOnboarding.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 24/06/24.
//

import SwiftUI

struct UserOnboardingQ1: View {
    @State private var name = ""
    var body: some View {
        ZStack(){
            Color(hex: "#018894").ignoresSafeArea(.all)
            VStack{
                VStack(alignment: .leading ,  spacing:20){
                    
                    Text("Let's get to know you better.")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    Spacer()
                        .frame(height:40)
                    
                    Text("What's your name?")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    Spacer()
                        .frame(height:10)
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                        
                        
                        if name.isEmpty{
                            Text("Name")
                                .foregroundColor(.white)
                                .font(.title3)
                                .padding(.leading)
                            
                        }
                        
                        TextField("", text: $name)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .shadow(color: Color.black.opacity(50), radius: 60)
                            .cornerRadius(50)
                            .foregroundStyle(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(.white))
                                
                            }
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        
                    })
                    
                    Spacer()
                        .frame(height:20)
                    
                    Button {
                        
                    }
                    
                label: {
                    Text("Next")
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
                    
                    
                    Spacer()
                }
                VStack(alignment: .trailing){
                    HStack(alignment: .center){
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.white)
                        Image(systemName: "circle")
                            .foregroundStyle(.white)
                        Image(systemName: "circle")
                            .foregroundStyle(.white)
                    }
                    .frame(alignment: .center)
                }
            }
            .padding()
        }
    }
}
struct UserOnboardingQ2: View {
    @State private var name = ""
    var body: some View {
        ZStack(){
            Color(hex: "#018894").ignoresSafeArea(.all)
            VStack{
                VStack(alignment: .leading ,  spacing:20){
                    
                    Text("Let's get to know you better.")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    Spacer()
                        .frame(height:40)
                    
                    Text("What's your name?")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    Spacer()
                        .frame(height:10)
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                        
                        
                        if name.isEmpty{
                            Text("Name")
                                .foregroundColor(.white)
                                .font(.title3)
                                .padding(.leading)
                            
                        }
                        
                        TextField("", text: $name)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .shadow(color: Color.black.opacity(50), radius: 60)
                            .cornerRadius(50)
                            .foregroundStyle(.white)
                            .overlay{
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(.white))
                                
                            }
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        
                    })
                    
                    Spacer()
                        .frame(height:20)
                    
                    Button {
                        
                    }
                    
                label: {
                    Text("Next")
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
                    
                    
                    Spacer()
                }
                VStack(alignment: .trailing){
                    HStack(alignment: .center){
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.white)
                        Image(systemName: "circle")
                            .foregroundStyle(.white)
                        Image(systemName: "circle")
                            .foregroundStyle(.white)
                    }
                    .frame(alignment: .center)
                }
            }
            .padding()
        }
    }
}

            

#Preview {
    UserOnboardingQ1()
}
