//
//  ChatView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

//import SwiftUI
//
//struct ChatView: View {
//    var body: some View {
//        VStack {
//            VStack() {
//                // Logo de la app
//                HStack {
//                    Spacer()
//                    Image("LogoApp")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 100)
//                        .frame(maxWidth: .infinity, alignment: .center)
//                    Spacer()
//                    Image("Perfil")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 60)
//                }
//                .padding(.leading, 50)
//            }
//            .padding(.horizontal, 30)
//            
//            
//            Spacer()
//        }
//    }
//}
//
//#Preview {
//    ChatView()
//}

import SwiftUI

struct ChatView: View {
    let messages = [
        ("Asistente WellPlate", "Hola, tengo una duda sobre mi plan alimenticio. ¿Puedo sustituir el pollo por tofu en la comida?", "Dic 04, 6:25 PM"),
        ("Usuario", "¡Hola! 😊 Claro que sí. El tofu es una excelente alternativa al pollo, especialmente si buscas una opción alta en proteínas y baja en grasas. Solo recuerda ajustar la porción: 150 g de tofu equivale a aproximadamente 100 g de pollo.", "Dic 04, 6:30 PM"),
        ("Asistente WellPlate", "¡Perfecto! ¿Algún consejo para cocinar el tofu para que quede más sabroso?", "Dic 04, 6:35 PM"),
        ("Usuario", "¡Por supuesto! Para un mejor sabor, presiona el tofu durante 15 minutos para quitarle el exceso de agua, luego marínalo con tus especias favoritas (ajo, jengibre y salsa de soya son una gran opción) y saltéalo a fuego alto hasta que esté dorado. ¡Te encantará! 😊", "Dic 04, 6:40 PM")
    ]
    
    var body: some View {
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
                Text("Asistente WellPlate")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                Spacer()
                Image(systemName: "slider.horizontal.3")
            }
            
            // ScrollView con los mensajes
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(messages, id: \.1) { message in
                        HStack {
                            if message.0 == "Asistente WellPlate" {
                                Spacer()
                                Text(message.1)
                                    .padding()
                                    .background(Color.primaryColor)
                                    .foregroundStyle(.white)
//                                    .background(Color.secondary.opacity(0.2))
                                    .cornerRadius(10)
                                    .frame(maxWidth: 250, alignment: .trailing)
                            } else {
                                Text(message.1)
                                    .padding()
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(10)
                                    .frame(maxWidth: 250, alignment: .leading)
                                Spacer()
                            }
                        }
                        Text(message.2)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding([.leading, .trailing], 5)
                    }
                }
                .padding(.horizontal, 15)
            }
            
            // Barra de escritura
            HStack {
                TextField("Escribe tu mensaje...", text: .constant(""))
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .frame(height: 50)
                
                Button(action: {
                    // Acción del botón de enviar
                }) {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.title)
                        .foregroundColor(.primaryApp)
                        .padding(.trailing, 10)
                }
            }
            .padding(.horizontal, 15)
            .padding(.bottom, 10)
        }
        .padding(.horizontal, 30)
        .navigationBarBackButtonHidden(true)
        .padding(.top, 10)
    }
}

#Preview {
    ChatView()
}
