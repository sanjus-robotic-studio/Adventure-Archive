//
//  WelcomeVIew.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import SwiftUI

struct WelcomeVIew: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(.teal).ignoresSafeArea(.all)
                VStack{
                    Text("Your Stories Awaits....")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image("Welcome")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Get Started")
                            .foregroundColor(.teal)
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
                            .fill(.white)
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    WelcomeVIew()
}
