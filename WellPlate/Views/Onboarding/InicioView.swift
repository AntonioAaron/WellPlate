//
//  InicioView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 07/02/25.
//

import SwiftUI

struct InicioView: View {
    @Binding var isOnboardingComplete: Bool
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                Image("LogoApp")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 200)

                VStack(spacing: 8) {
                    Image("WellPlate")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    Image("Powered")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                }
                
                Spacer()
                NavigationLink(destination: LoginView(isOnboardingComplete: $isOnboardingComplete)) {
                    Image("ButtonReg")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .cornerRadius(15)
                }
                Spacer()
            }
        }
    }
}
//
//#Preview{
//    InicioView()
//}
