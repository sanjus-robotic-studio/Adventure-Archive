//
//  WelcomeVIew.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var appUser: AppUser?
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(hex: "#018894").ignoresSafeArea(.all)
                VStack{
                    Spacer()
                    Text("Your Stories Awaits....")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image("Welcome")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: LoginView(appUser:$appUser).navigationBarBackButtonHidden(true)) {
                        Text("Get Started")
                            .foregroundColor(.teal)
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
                    
                }
                .padding()
            }
        }
    }
}

extension Color {
    init(hex: String) {
        let hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexSanitized)
        scanner.currentIndex = hexSanitized.hasPrefix("#") ? hexSanitized.index(after: hexSanitized.startIndex) : hexSanitized.startIndex

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb & 0xFF0000) >> 16) / 255.0
        let g = Double((rgb & 0x00FF00) >> 8) / 255.0
        let b = Double(rgb & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

