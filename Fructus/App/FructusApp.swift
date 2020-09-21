//
//  FructusApp.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/17/20.
//

import SwiftUI

@main //Just like in java. Main is for entrypoint
struct FructusApp: App {  //App protocol API
    
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true //saving the state on the device storage
    
    
    //MARK: - BODY
    var body: some Scene {
        WindowGroup {
            //Scene switching by working with view actions (StartButtonView(), for example)
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
