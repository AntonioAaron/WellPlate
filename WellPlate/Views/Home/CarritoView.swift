//
//  PlanAlimenticioView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

import SwiftUI

struct CarritoView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                // Logo de la app
                Image("LogoApp")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Título de la sección y el nombre
                HStack {
                    Image(systemName: "cart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.primaryApp)
                    
                    Text("Shopping")
                        .font(.title.bold())
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "slider.horizontal.3")
                }
                .padding(.bottom, 10)
            }
            .padding(.horizontal, 30)
            
            // Lista de productos
            List {
                // Producto 1
                HStack {
                    Image("Pechuga")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Pechuga de pollo fresca")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("2.00 Kg")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$258.00")
                            .bold()
                        Text("$129.00/kg")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                // Producto 2
                HStack {
                    Image("Avena")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Avena Integral")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("2.00 Kg")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$50.00")
                            .bold()
                        Text("$25.00 c/u")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                // Producto 3
                HStack {
                    Image("Leche")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Leche deslactosada")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("1 Lt")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$35.50")
                            .bold()
                        Text("$35.50/L")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                // Producto 4
                HStack {
                    Image("Platano")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Plátano Chiapas")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("1 Kg")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$25.00")
                            .bold()
                        Text("$25.00/kg")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                // Producto 5
                HStack {
                    Image("Pimiento")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Pimiento morrón")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("500 gr")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$36.36")
                            .bold()
                        Text("$9.09/pc")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                // Producto 6
                HStack {
                    Image("Aceite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Aceite de Oliva")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("500 gr")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$75.50")
                            .bold()
                        Text("$75.5/pc")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical)
                
                // Producto 7
                HStack {
                    Image("Yogurth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text("Yogurth griego")
                            .font(.system(size: 16, weight: .bold))
                        HStack {
                            Text("2 Lt")
                        }
                        .font(.system(size: 14))
                    }
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("$144.00")
                            .bold()
                        Text("$72/pc")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                
            }
//            .padding(.horizontal, 30)
            .background(Color.black)
            
            Button(action: {
                // Acción para pedir el carrito
            }) {
                Text("¡Pedir mi súper!")
                    .bold()
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.primaryApp)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            .padding(.horizontal, 30)
            
            Spacer()
        }
    }
}

#Preview {
    CarritoView()
}
