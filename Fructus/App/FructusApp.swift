//
//  FructusApp.swift
//  Fructus
//
//  Created by Nikolay  Yuchormanski on 25.04.24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
