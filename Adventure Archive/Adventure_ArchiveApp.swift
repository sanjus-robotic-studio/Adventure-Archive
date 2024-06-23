//
//  Adventure_ArchiveApp.swift
//  Adventure Archive
//
//  Created by Sanjiv Anand on 22/06/24.
//

import SwiftUI
import SwiftData

@main
struct Adventure_ArchiveApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView(appUser: .constant(.init(uid: "1234", email: nil)) )
                .environmentObject(LoginViewModal())
        }
        
    }
}
