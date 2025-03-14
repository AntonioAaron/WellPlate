//
//  NotificacionesView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

//import SwiftUI
//
//struct NotificacionesView: View {
//    // Ejemplo de mensajes de notificación
//    let notifications = [
//        ("¡Vas excelente, sigue así!", "Este mes bajaste 2.5 kg.", "Hoy", "5m ago"),
//        ("¿Día ocupado?", "Hoy diste 790 pasos más de lo usual", "Hoy", "2h ago"),
//        ("¡No te rindas!", "Sabemos que hay días difíciles, pero estamos contigo en tu proceso!", "Hoy", "3h ago"),
//        ("¡Aún te queda 60%!", "Cuando sientas que estás cansado, aún te queda 60% de tu capacidad. ¡No te rindas!", "Ayer", "31/ENE"),
//        ("¡Mañana es tu nuevo plan!", "Mañana te daremos tu plan semanal", "Ayer", "31/ENE")
//    ]
//    
//    var body: some View {
//        VStack {
//            VStack {
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
//                
//                HStack {
//                    Text("Tus notificaciones")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .padding(.top, 10)
//                        .padding(.bottom, 10)
//                    Spacer()
//                    Image(systemName: "slider.horizontal.3")
//                }
//                                
//                // Lista de notificaciones
//                ScrollView {
//                    VStack(alignment: .leading) {
//                        ForEach(notifications, id: \.0) { notification in
//                            VStack(alignment: .leading, spacing: 10) {
//                                HStack {
//                                    // Icono y texto de la notificación
//                                    Image("Love")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 30, height: 30)
//                                        .padding(.leading, 10)
//                                    
//                                    Text(notification.0)
//                                        .font(.system(size: 16, weight: .semibold))
//                                        .foregroundColor(.black)
//                                    
//                                    Spacer()
//                                    
//                                    Text(notification.3)
//                                        .font(.caption)
//                                        .foregroundColor(.gray)
//                                        .padding(.trailing, 10)
//                                }
//                                
//                                Text(notification.1)
//                                    .font(.system(size: 13))
//                                    .foregroundColor(.gray)
//                                    .padding(.leading, 40)
//                                    .padding(.bottom, 5)
//                                
//                                Divider()  // Separador entre notificaciones
//                            }
//                        }
//                    }
//                    .padding(.horizontal, 15)
//                }
//            }
//            
//            Spacer()
//        }
//        .padding(.horizontal, 30)
//        .navigationBarBackButtonHidden(true)
//    }
//}
//
//#Preview {
//    NotificacionesView()
//}
//

import SwiftUI

struct NotificacionesView: View {
    // Ejemplo de mensajes de notificación
    let notifications = [
        ("¡Vas excelente, sigue así!", "Este mes bajaste 2.5 kg.", "Hoy", "5m ago"),
        ("¿Día ocupado?", "Hoy diste 790 pasos más de lo usual", "Hoy", "2h ago"),
        ("¡No te rindas!", "Sabemos que hay días difíciles, pero estamos contigo en tu proceso!", "Hoy", "3h ago"),
        ("¡Aún te queda 60%!", "Cuando sientas que estás cansado, aún te queda 60% de tu capacidad. ¡No te rindas!", "Ayer", "31/ENE"),
        ("¡Mañana es tu nuevo plan!", "Mañana te daremos tu plan semanal", "Ayer", "31/ENE")
    ]
    
    var body: some View {
        VStack {
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
                    Text("Tus notificaciones")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    Spacer()
                    Image(systemName: "slider.horizontal.3")
                }
                                
                // Lista de notificaciones
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("HOY")
                            .font(.system(size: 15, weight: .bold))
                            .padding(.top, 10)
                            .padding(.leading, 10)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundStyle(.gray)
                        
                        ForEach(notifications.filter { $0.2 == "Hoy" }, id: \.0) { notification in
                            NotificationRow(notification: notification)
                        }
                        
                        Text("AYER")
                            .font(.system(size: 15, weight: .bold))
                            .padding(.top, 10)
                            .padding(.leading, 10)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundStyle(.gray)
                        
                        ForEach(notifications.filter { $0.2 == "Ayer" }, id: \.0) { notification in
                            NotificationRow(notification: notification)
                        }
                    }
                    .padding(.horizontal, 15)
                }
            }
            Spacer()
        }
        .padding(.horizontal, 30)
        .navigationBarBackButtonHidden(true)
    }
}

struct NotificationRow: View {
    let notification: (String, String, String, String)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack {
                // Icono y texto de la notificación
                Image("Love")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
//                    .padding(.leading, 10)
                
                VStack (alignment: .leading) {
                    Text(notification.0)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                    
                    Text(notification.1)
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                        .padding(.bottom, 5)
                }
                
                Spacer()
                
                Text(notification.3)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.primaryApp)
            }
            Divider()  // Separador entre notificaciones
        }
        .padding(.top)
    }
}

#Preview {
    NotificacionesView()
}
