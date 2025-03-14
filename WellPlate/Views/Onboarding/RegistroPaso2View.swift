//
//  RegistroPaso2View.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

import SwiftUI

struct RegistroPaso2View: View {
    @Binding var isOnboardingComplete: Bool
    
    //PARTE1
    @State private var objetivo: String = "⁠Aumentar masa muscular"
    @State private var sexo: String = "Masculino"
    @State private var edad: String = ""
    @State private var peso: String = ""
    @State private var altura: String = ""
    //PARTE1_FIN
    //PARTE3
    @State private var diagnosticos: String = "N/A"
    @State private var bajoTratamiento: String = "No"
    @State private var patronAlimentacion: String = "No"
    @State private var especificaCual: String = ""
    //PARTE3_FIN
    //PARTE2
    @State private var cintura: String = ""
    @State private var cadera: String = ""
    @State private var muneca: String = ""
    @State private var porcentajeGrasa: String = ""
    @State private var metodo: String = "Bioimpedancia"
    //PARTE2FIN
    //PARTE4
    @State private var aguaConsumida: String = ""
    @State private var bebidasAzucaradas: String = "No"
    @State private var especificaBebidas: String = ""
    @State private var nivelActividad: String = "Leve"
    @State private var tipoActividad: String = "Gimnasio"
    //PARTE4_FIN
    //PARTE5
    @State private var fuma: String = "No"
    @State private var cantidadFuma: String = "N/A"
    @State private var consumeAlcohol: String = "No"
    @State private var cantidadAlcohol: String = "N/A"
    @State private var quimicaSanguinea: String = ""
    @State private var examenOrina: String = ""
    @State private var planAlimenticio: String = "Menús únicos cada día de la semana"
    //PARTE5_FIN
    @State private var showFileImporter = false
    @State private var selectedFileURL: URL?
    
    var body: some View {
//        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        NavigationLink(destination: LoginView(isOnboardingComplete: $isOnboardingComplete)) {
                            Image(systemName: "arrow.left.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.primaryApp)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack (alignment: .trailing){
                        Text("Crea tu cuenta")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Text("Paso 2 de 3")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .init(horizontal: .trailing, vertical: .top))
                    .padding(.horizontal, 30)
                    
                    Image("Paso2")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 30)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        //PARTE 1 INICIO
                        
                        Text("Objetivo")
                            .font(.callout.monospacedDigit())
                        Picker("Objetivo", selection: $objetivo) {
                            Text("⁠Aumentar masa muscular").tag("⁠Aumentar masa muscular")
                            Text("⁠⁠Alimentarse saludablemente").tag("⁠⁠Alimentarse saludablemente")
                            Text("⁠⁠Disminuir grasa corporal").tag("⁠⁠Disminuir grasa corporal")
                        }
//                        .pickerStyle(SegmentedPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        Text("Sexo")
                            .font(.callout.monospacedDigit())
                        Picker("Sexo", selection: $sexo) {
                            Text("Masculino").tag("Masculino")
                            Text("Femenino").tag("Femenino")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.bottom, 5)
                        
                        Text("Edad")
                            .font(.callout.monospacedDigit())
                        CustomTextField(placeholder: "", text: $edad)
                            .padding(.bottom, 5)
                        
                        HStack {
                            VStack (alignment: .leading) {
                                HStack {
                                    Text("Peso (kg)")
                                        .font(.callout.monospacedDigit())
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 13)
                                        .foregroundStyle(.primaryApp)
                                }
                                CustomTextField(placeholder: "", text: $peso)
                                    .padding(.trailing, 60)
                            }
                            VStack (alignment: .leading){
                                HStack {
                                    Text("Altura (m)")
                                        .font(.callout.monospacedDigit())
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 13)
                                        .foregroundStyle(.primaryApp)
                                }
                                CustomTextField(placeholder: "", text: $altura)
                                    .padding(.trailing, 60)
                            }
                        }
                        .padding(.bottom, 5)
                        
                        HStack {
                            Text("Índice de masa corporal (IMC)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $peso)
                            .padding(.trailing, 220)
                            .padding(.bottom, 5)
                        
                        //PARTE 1 INICIO
                        
                        //PARTE 2 INICIO
                        
                        HStack {
                            Text("Circunferencia de cintura (cm)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $cintura)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Circunferencia de cadera (cm)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $cadera)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Circunferencia de muñeca (cm)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $muneca)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Porcentaje de grasa (si lo conoces)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $porcentajeGrasa)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Método por el cual fue tomado")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Método", selection: $metodo) {
                            Text("Bioimpedancia").tag("Bioimpedancia")
                            Text("Caliper").tag("Caliper")
                            Text("Antropometría").tag("Antropometría")
                        }
                        .accentColor(.primaryApp)
                        
                        //PARTE 2 FIN
                        
                        //PARTE 3 INICIO
                        HStack {
                            Text("¿Diagnósticos médicos relevantes?")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Diagnósticos", selection: $diagnosticos) {
                            Text("N/A").tag("N/A")
                            Text("Sí").tag("Sí")
                            Text("No").tag("No")
                        }
                        .pickerStyle(MenuPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        HStack {
                            Text("¿Estás bajo algún tratamiento?")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Tratamiento", selection: $bajoTratamiento) {
                            Text("Sí").tag("Sí")
                            Text("No").tag("No")
                        }
                        .pickerStyle(MenuPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        HStack {
                            Text("Especifica cuál, si no, escribe N/A")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $especificaCual)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("¿Sigues algún patrón de alimentación específico?")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Patrón de alimentación", selection: $patronAlimentacion) {
                            Text("Sí").tag("Sí")
                            Text("No").tag("No")
                        }
                        .pickerStyle(MenuPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        HStack {
                            Text("Especifica cuál, si no, escribe N/A")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $especificaCual)
                            .padding(.bottom, 10)
                        
                        //PARTE 3 FIN
                        
                        //PARTE 4 INICIO
                        
                        HStack {
                            Text("¿Cuánta agua consumes al día? (L)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $aguaConsumida)
                            .padding(.bottom, 10)
                        
                        // ¿Consumes bebidas azucaradas?
                        HStack {
                            Text("¿Consumes bebidas azucaradas?")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Bebidas azucaradas", selection: $bebidasAzucaradas) {
                            Text("Sí").tag("Sí")
                            Text("No").tag("No")
                        }
                        .pickerStyle(MenuPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        // Especifica cuáles y su cantidad, si no, escribe N/A
                        HStack {
                            Text("Especifica cuáles y su cantidad, si no, escribe N/A")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        CustomTextField(placeholder: "", text: $especificaBebidas)
                            .padding(.bottom, 10)
                        
                        // ¿Nivel de actividad física?
                        HStack {
                            Text("¿Nivel de actividad física?")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Nivel de actividad", selection: $nivelActividad) {
                            Text("Leve").tag("Leve")
                            Text("Moderado").tag("Moderado")
                            Text("Intenso").tag("Intenso")
                            Text("Muy intenso").tag("Muy intenso")
                        }
                        .pickerStyle(MenuPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        // Tipo de actividad que realizas
                        HStack {
                            Text("Tipo de actividad que realizas")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Tipo de actividad", selection: $tipoActividad) {
                            Text("Gimnasio").tag("Gimnasio")
                            Text("Caminar").tag("Caminar")
                            Text("Correr").tag("Correr")
                            Text("Natación").tag("Natación")
                            Text("Ciclismo").tag("Ciclismo")
                            Text("⁠Yoga").tag("⁠Yoga")
                            Text("⁠Pilates").tag("⁠Pilates")
                            Text("⁠⁠Baile").tag("⁠⁠Baile")
                            Text("⁠⁠Gimnasia").tag("⁠⁠Gimnasia")
                            Text("⁠⁠Boxeo").tag("⁠⁠Boxeo")
                            Text("⁠⁠Artes marciales").tag("⁠⁠Artes marciales")
                            Text("⁠⁠Fútbol").tag("⁠⁠Fútbol")
                            Text("⁠⁠Baloncesto").tag("⁠⁠Baloncesto")
                            Text("⁠⁠Tenis").tag("⁠⁠Tenis")
                            Text("⁠⁠CrossFit").tag("⁠⁠CrossFit")
                            Text("Otro").tag("Otro")
                        }
                        .pickerStyle(MenuPickerStyle())
                        .accentColor(.primaryApp)
                        .padding(.bottom, 10)
                        
                        //PANTALLA 5_FIN
                        //PANTALLA 5
                        
                        // ¿Fumas?
                        HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("¿Fumas?")
                                        .font(.callout.monospacedDigit())
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 13)
                                        .foregroundStyle(.primaryApp)
                                }
                                Picker("Fumas", selection: $fuma) {
                                    Text("Sí").tag("Sí")
                                    Text("No").tag("No")
                                }
                                .pickerStyle(MenuPickerStyle())
                                .accentColor(.primaryApp)
                            }
                            Spacer()
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("¿Qué cantidad?")
                                        .font(.callout.monospacedDigit())
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 13)
                                        .foregroundStyle(.primaryApp)
                                }
                                Picker("Cantidad de cigarrillos", selection: $cantidadFuma) {
                                    Text("N/A").tag("N/A")
                                    Text("1-5 cigarrillos/día").tag("1-5 cigarrillos/día")
                                    Text("6-10 cigarrillos/día").tag("6-10 cigarrillos/día")
                                    Text("Más de 10 cigarrillos/día").tag("Más de 10 cigarrillos/día")
                                }
                                .pickerStyle(MenuPickerStyle())
                                .accentColor(.primaryApp)
                            }
                        }
                        .padding(.bottom, 10)
                        
                        // ¿Consumes alcohol?
                        HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("¿Consumes alcohol?")
                                        .font(.callout.monospacedDigit())
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 13)
                                        .foregroundStyle(.primaryApp)
                                }
                                Picker("Consumes alcohol", selection: $consumeAlcohol) {
                                    Text("Sí").tag("Sí")
                                    Text("No").tag("No")
                                }
                                .pickerStyle(MenuPickerStyle())
                                .accentColor(.primaryApp)
                            }
                            Spacer()
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("¿Qué cantidad?")
                                        .font(.callout.monospacedDigit())
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 13)
                                        .foregroundStyle(.primaryApp)
                                }
                                Picker("Cantidad de alcohol", selection: $cantidadAlcohol) {
                                    Text("N/A").tag("N/A")
                                    Text("1-2 copas").tag("1-2 copas")
                                    Text("3-4 copas").tag("3-4 copas")
                                    Text("Más de 4 copas").tag("Más de 4 copas")
                                }
                                .pickerStyle(MenuPickerStyle())
                                .accentColor(.primaryApp)
                            }
                        }
                        .padding(.bottom, 10)
                        
                        // Química Sanguínea 1 - 36 elementos (opcional)
                        HStack {
                            Text("Química Sanguínea 1 - 36 elementos (opcional)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        FileImporterView(selectedFileURL: $selectedFileURL, isPresented: $showFileImporter)
                            .padding(.bottom, 10)
                        
                        // Examen general de orina (opcional)
                        HStack {
                            Text("Examen general de orina (opcional)")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        FileImporterView(selectedFileURL: $selectedFileURL, isPresented: $showFileImporter)
                            .padding(.bottom, 10)
                        
                        // ¿Cómo prefieres tu plan alimenticio?
                        HStack {
                            Text("¿Cómo prefieres tu plan alimenticio?")
                                .font(.callout.monospacedDigit())
                            Image(systemName: "questionmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13)
                                .foregroundStyle(.primaryApp)
                        }
                        Picker("Plan alimenticio", selection: $planAlimenticio) {
                            Text("Menú diario único").tag("Menús únicos cada día de la semana")
                            Text("Repetir menús").tag("Repetir menús algunos días")
                        }
                        .frame(height: 50)
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.bottom, 10)
                    }
                    .padding(.top, 5)
                    .padding(.horizontal, 30)
                    
                    NavigationLink(destination: RegistroPaso3View(isOnboardingComplete: $isOnboardingComplete)) {
                        Text("Siguiente")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.primaryApp)
                            .cornerRadius(10)
                            .padding(.top, 20)
                            .padding(.horizontal, 30)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 15)
                .navigationBarBackButtonHidden(true)
            }
            .navigationBarBackButtonHidden(true)
        }
//    }
}
//
//#Preview {
//    RegistroPaso2View()
//}
