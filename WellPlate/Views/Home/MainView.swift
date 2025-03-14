//
//  MainView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 23/02/25.
//

//Version 1
import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                // Mostrar el contenido de la vista seleccionada
                Group {
                    if selectedTab == 0 {
                        HomeView()
                    } else if selectedTab == 1 {
                        CarritoView()
                    } else if selectedTab == 2 {
                        ChatView()
                    } else if selectedTab == 3 {
                        EstadisticasView()
                    } else if selectedTab == 4 {
                        NotificacionesView()
                    } else if selectedTab == 5 {
                        PerfilView()
                    }
                }
                
                Spacer()
                
                // Custom TabBar
                HStack {
                    Button(action: { selectedTab = 0 }) {
                        VStack {
                            Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .foregroundColor(selectedTab == 0 ? .primaryApp : .gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { selectedTab = 1 }) {
                        VStack {
                            Image(systemName: "cart.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .foregroundColor(selectedTab == 1 ? .primaryApp : .gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { selectedTab = 2 }) {
                        VStack {
                            Image(systemName: "message.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .foregroundColor(selectedTab == 2 ? .primaryApp : .gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { selectedTab = 3 }) {
                        VStack {
                            Image(systemName: "chart.bar.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .foregroundColor(selectedTab == 3 ? .primaryApp : .gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { selectedTab = 4 }) {
                        VStack {
                            Image(systemName: "bell.badge.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .foregroundColor(selectedTab == 4 ? .primaryApp : .gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { selectedTab = 5 }) {
                        VStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .foregroundColor(selectedTab == 5 ? .primaryApp : .gray)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
//                .shadow(radius: 5)
                .padding(.horizontal)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    MainView()
}


//Version 2
//import SwiftUI
//
//struct MainView: View {
//    @State private var isOnboardingComplete = false  // Control de inicio de sesión o onboarding
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                if isOnboardingComplete {
//                    // Si el onboarding ha terminado, muestra la vista principal con la barra de pestañas
//                    TabView {
//                        HomeView()
//                            .tabItem {
//                                VStack {
//                                    Image(systemName: "house.fill")
//                                }
//                            }
//                        
//                        CarritoView()
//                            .tabItem {
//                                VStack {
//                                    Image(systemName: "cart.fill")
//                                }
//                            }
//                        
//                        ChatView()
//                            .tabItem {
//                                VStack {
//                                    Image(systemName: "message.fill")
//                                }
//                            }
//                        
//                        EstadisticasView()
//                            .tabItem {
//                                VStack {
//                                    Image(systemName: "chart.bar.fill")
//                                }
//                            }
//                        
//                        NotificacionesView()
//                            .tabItem {
//                                VStack {
//                                    Image(systemName: "bell.badge.fill")
//                                }
//                            }
//                        
//                        PerfilView()
//                            .tabItem {
//                                VStack {
//                                    Image(systemName: "person.fill")
//                                }
//                            }
//                    }
//                    .accentColor(.primaryApp)
//                    .navigationBarTitleDisplayMode(.inline)
//                } else {
//                    // Si el onboarding no está completo, muestra la vista de login
//                    LoginView(isOnboardingComplete: $isOnboardingComplete)  // Enviar la referencia del estado
//                }
//            }
//        }
//    }
//}
