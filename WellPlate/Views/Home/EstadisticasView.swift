//
//  EstadisticasView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

import SwiftUI

struct EstadisticasView: View {
    var body: some View {
        VStack {
            VStack() {
                // Logo de la app
                HStack {
                    Spacer()
                    Image("LogoApp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                    
                    Image("Perfil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 60)
                }
                .padding(.leading, 50)
                
                Image("ContrataPlanPremium")
                    .resizable()
                    .scaledToFit()
                
                ScrollView{
                                        
                    Image("GraficaBarras")
                        .resizable()
                        .scaledToFit()
                    
                    Image("Progreso")
                        .resizable()
                        .scaledToFit()
                    
                    Image("TusAvances")
                        .resizable()
                        .scaledToFit()
                }
            }
            .padding(.horizontal, 30)
            
            
            Spacer()
        }
    }
}

#Preview {
    EstadisticasView()
}
