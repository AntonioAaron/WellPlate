//
//  RegistroPaso3View.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 11/02/25.
//

import SwiftUI

struct RegistroPaso3View: View {
    @Binding var isOnboardingComplete: Bool
    
    @State private var selectedIngredients: Set<String> = []
    @State private var allergyText: String = ""
    
    let ingredients = [
        "1", "2", "3", "4", "5", "6", "7", "8",
        "9", "10", "11", "12", "13", "14", "15", "16",
        "17", "18", "19", "20", "21", "22", "23", "24",
        "25", "26", "27", "28", "29", "30", "31", "32",
        "33", "34", "35", "36", "37", "38", "39", "40",
        "41", "42", "43", "44", "45", "46", "47", "48",
        "49", "50", "51", "52", "53", "54", "55", "56",
        "57", "58", "59", "60", "61", "62", "63", "64",
        "65", "66", "67"
    ]
    var body: some View {
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
            
            VStack(alignment: .trailing) {
                Text("¿Qué ingredientes te gustan?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text("Paso 3 de 3")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .init(horizontal: .trailing, vertical: .top))
            .padding(.horizontal, 30)
            
            Image("Paso3")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 30)
            
            // Ingredientes seleccionables
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))], spacing: 0) {
                    ForEach(ingredients, id: \.self) { ingredient in
                        Button(action: {
                            if selectedIngredients.contains(ingredient) {
                                selectedIngredients.remove(ingredient)
                            } else {
                                selectedIngredients.insert(ingredient)
                            }
                        }) {
                            VStack {
                                Image(ingredient)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                            }
                            .padding()
                            .background(selectedIngredients.contains(ingredient) ? Color.primaryColor.opacity(0.3) : Color.white)
                            .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            HStack {
                Text("¿Eres alérgico a algún ingrediente?")
                    .font(.callout.monospacedDigit())
                Image(systemName: "questionmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 13)
                    .foregroundStyle(.primaryApp)
            }
            CustomTextField(placeholder: "Especificar alergias", text: $allergyText)
                .padding(.bottom, 1)
                .frame(width: 300)
            
            NavigationLink(destination: CargaView(isOnboardingComplete: $isOnboardingComplete)) {
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
}

