//
//  CargaView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 14/02/25.
//

import SwiftUI

struct CargaView: View {
    @Binding var isOnboardingComplete: Bool
    
    @State private var navigateToCargaLista = false
    
    var body: some View {
            ZStack {
                VStack {
                    Image("top")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipped()
                        .offset(y: -80)
                    Spacer()
                    Image("Carga1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 200)
                    Spacer()
                    Image("bottom")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipped()
                        .offset(y: 80)
                }
                
                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                        .padding(.top, 300)
                }
                .padding()
                
                // Navegación programática
                NavigationLink(destination: CargaListaView(isOnboardingComplete: $isOnboardingComplete), isActive: $navigateToCargaLista) {
                    EmptyView()
                }
            }
            .onAppear {
                // Espera de 5 segundos
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    navigateToCargaLista = true // Activa la navegación
                }
            }
            .navigationBarBackButtonHidden(true)
    }
}
//
//#Preview {
//    CargaView()
//}
