//
//  FructusApp.swift
//  Fructus
//
//  Created by Kyo on 3/30/21.
//

import SwiftUI

@main //attribute entry point of program
struct FructusApp: App { //App protocol
    @AppStorage("isOnboarding") var isOnboarding = true
    
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
//App life cycle
//Apps 
//Scenes displays individuals
//Views peace of UI

//@AppStorage property wrapper UserDefault
