//
//  DemaReto451_SwiftUIApp.swift
//  DemaReto451_SwiftUI
//
//  Created by José Molina on 22/09/26.
//

import SwiftUI

@main
struct DemaReto451_SwiftUIApp: App {
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    var body: some Scene {
        WindowGroup {
            //ContentView()
            if isLoggedIn{
                HomeScreen()
            }else{
                NavigationStack {
                    Login()
                }
            }
        }
    }
}
