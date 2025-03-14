//
//  PerfilView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        VStack (){
            // Logo de la app y perfil del usuario
            VStack {
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
                
                HStack {
                    Text("Perfil de usuario")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                        .padding(.bottom, 15)
                    Spacer()
                }
                
                HStack {
                    Text("Configuración general")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)
                    Spacer()
                }
            }
            .padding(.horizontal, 30)
            
            // Lista de opciones de configuración
            List{
                Button(action: {
                    // Acción para modificar datos antropométricos
                }) {
                    HStack {
                        Image(systemName: "slider.vertical.3")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        Text("Modificar datos antropométricos")
                            .font(.body)
                        Spacer()
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para manejar la suscripción y cuenta
                }) {
                    HStack {
                        Image(systemName: "creditcard.fill")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Manejo de suscripción y cuenta")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para cambiar idioma
                }) {
                    HStack {
                        Image(systemName: "globe")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Idioma")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para términos y condiciones
                }) {
                    HStack {
                        Image(systemName: "exclamationmark.circle.fill")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Términos y condiciones")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para política de privacidad
                }) {
                    HStack {
                        Image(systemName: "lock.fill")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Política de privacidad")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para calificar
                }) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Calificanos")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para compartir la app
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up.fill")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Comparte esta app")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
                
                Button(action: {
                    // Acción para información de la app
                }) {
                    HStack {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .background(Color.primaryApp)
                            .cornerRadius(50)
                        
                        Text("Acerca de")
                            .font(.body)
                        
                        Spacer()
                        
                        Image(systemName: "greaterthan")
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
            }
            .listStyle(PlainListStyle())
            .padding(.top, 20)
            
            Spacer()
        }
        .padding(.horizontal, 15)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PerfilView()
}
