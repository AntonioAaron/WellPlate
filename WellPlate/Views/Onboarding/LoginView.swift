//
//  LoginView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 12/02/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    @Binding var isOnboardingComplete: Bool  // Aquí usamos Binding para modificar el estado

    var body: some View {
        VStack {
            HStack {
                Image("LogoApp")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Spacer()
                Image(systemName: "line.3.horizontal.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45)
                    .foregroundStyle(.primaryApp)
            }
            .padding(.bottom, 10)
            
            Image("Bienvenido")
                .resizable()
                .scaledToFit()

            HStack {
                Image("Facil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 270)
                Spacer()
            }
            .padding(.bottom, 60)

            TextField("", text: $email)
                .padding()
                .background(Color("PrimaryAppColor"))
                .cornerRadius(10)
                .foregroundColor(.white)
                .overlay(
                    Text("E-mail / Nombre de usuario")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        .opacity(email.isEmpty ? 1 : 0), alignment: .leading
                )
            
            SecureField("", text: $password)
                .padding()
                .background(Color("PrimaryAppColor"))
                .cornerRadius(10)
                .foregroundColor(.white)
                .overlay(
                    Text("Contraseña")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        .opacity(email.isEmpty ? 1 : 0), alignment: .leading
                )

            HStack {
                Button(action: {
                    rememberMe.toggle()
                }) {
                    Image(systemName: rememberMe ? "square.fill" : "square")
                        .foregroundColor(rememberMe ? .primaryApp : .gray)
                }
                
                Text("Recuérdame")
                    .font(.footnote)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                    // ToDo (Flujo 'Olvidar Contraseña')
                }) {
                    Text("¿Olvidaste tu contraseña?")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top)
            .padding(.bottom)

            // AQUI TERMINA EL ONBOARDING
            NavigationLink(destination: MainView()) {
                Text("INGRESA AHORA")
                    .bold()
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.primaryColor)
                    .cornerRadius(10)
                    .onTapGesture {
                        // Cuando el usuario ingrese, marcamos que el onboarding está completo
                        isOnboardingComplete = true
                    }
            }
            Spacer()
            
            HStack {
                Divider()
                    .frame(width: 80, height: 1)
                    .background(Color.primaryApp)
                Spacer()
                
                Text("O INICIA SESIÓN CON")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    
                Spacer()
                Divider()
                    .frame(width: 80, height: 1)
                    .background(Color.primaryApp)
                
            }
            .padding(.bottom)

            HStack {
                // AQUI PUEDE ACABAR EL ONBOARDING
                NavigationLink(destination: MainView()) {
                    Image("Google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                        .cornerRadius(10)
                }
                // AQUI PUEDE ACABAR EL ONBOARDING
                NavigationLink(destination: MainView()) {
                    Image("Facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                        .cornerRadius(10)
                }
                // AQUI PUEDE ACABAR EL ONBOARDING
                NavigationLink(destination: MainView()) {
                    Image("Apple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                        .cornerRadius(10)
                }
            }
            .padding(.top, 20)

            Text("¿NO TIENES UNA CUENTA?")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.top, 10)
            
            NavigationLink(destination: RegistroPaso1View(isOnboardingComplete: $isOnboardingComplete)){
                Text("CREA UNA AHORA")
                    .font(.subheadline)
                    .foregroundColor(.primaryApp)
                    .padding(.all, 5)
            }
            Spacer()
        }
        .padding()
        .padding(.top, 20)
        .padding(.horizontal, 15)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview{
    LoginView(isOnboardingComplete: .constant(false))
}
