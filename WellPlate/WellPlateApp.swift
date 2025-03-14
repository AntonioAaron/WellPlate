//
//  WellPlateApp.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

import SwiftUI

@main
struct WellPlateApp: App {
    @State private var isOnboardingComplete: Bool = false // Controla si se completó el onboarding
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingComplete {
                MainView()  // Si el onboarding está completo, muestra MainView
            } else {
                InicioView(isOnboardingComplete: $isOnboardingComplete)  // Pasamos el binding a LoginView
            }
        }
    }
}
