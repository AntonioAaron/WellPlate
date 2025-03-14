//
//  CargaListaView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 14/02/25.
//

//import SwiftUI
//
//struct CargaListaView: View {
//    var body: some View {
//            ZStack {
//                VStack {
//                    Image("fondo")
//                        .resizable()
//                        .scaledToFill() // Ajustamos para llenar todo el ancho
//                        .frame(maxWidth: .infinity, maxHeight: .infinity) // Ocupa todo el ancho disponible
//                        .clipped() // Recorta cualquier exceso que sobrepase el área
//                        .offset(y: -80) // Ajusta la posición hacia arriba
//                }
//            }
//            .navigationBarBackButtonHidden(true)
//    }
//}
//
//#Preview{
//    CargaListaView()
//}
import SwiftUI

struct CargaListaView: View {
    @Binding var isOnboardingComplete: Bool

    var body: some View {
        ZStack {
            Image("fondo")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipped()
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Image("TenemosListoTuPlan")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    NavigationLink(destination: LoginView(isOnboardingComplete: $isOnboardingComplete)) {
                        Image("HazClickAqui")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .padding(.horizontal, 70)
                            .padding(.top, 50)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

//#Preview {
//    CargaListaView()
//}
