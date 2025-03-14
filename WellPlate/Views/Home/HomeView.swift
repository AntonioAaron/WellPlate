import SwiftUI

struct Meal {
    var title: String
    var items: [String]
}

struct Day {
    var name: String
    var meals: [Meal]
}

struct HomeView: View {
    let daysOfWeek: [Day] = [
        
        Day(name: "Lunes", meals: [
            Meal(title: "Desayuno", items: [
                "2 hotcakes de avena con plátano (40 g avena, ½ plátano, 1 huevo)",
                "1 cda. de mantequilla de almendra",
                "1 taza de fresas",
                "Café o té sin azúcar"
            ]),
            Meal(title: "Colación 1", items: [
                "1 taza de pepino con limón y chile en polvo",
                "10 almendras"
            ]),
            Meal(title: "Comida", items: [
                "120 g de pechuga de pollo a la plancha",
                "Ensalada de espinaca con tomate, cebolla y 1 cda. de aceite de oliva",
                "½ taza de arroz integral",
                "½ taza de lentejas",
                "1 taza de agua de limón sin azúcar"
            ]),
            Meal(title: "Colación 2", items: [
                "1 manzana",
                "1 cda. de crema de cacahuate"
            ]),
            Meal(title: "Cena", items: [
                "2 tostadas de maíz con atún, jitomate y cebolla",
                "½ aguacate",
                "1 taza de jícama con limón y chile"
            ])
        ]),
        
        Day(name: "Martes", meals: [
            Meal(title: "Desayuno", items: [
                "2 quesadillas de tortilla integral con 50 g de queso sin lactosa",
                "½ taza de frijoles",
                "1 taza de moras mixtas"
            ]),
            Meal(title: "Colación 1", items: [
                "10 nueces",
                "1 taza de zanahorias baby con limón y chile"
            ]),
            Meal(title: "Comida", items: [
                "120 g de salmón a la plancha",
                "1 taza de ensalada de lechuga, tomate y pepino con 1 cda. de aceite de oliva",
                "1 papa pequeña al horno",
                "½ taza de garbanzos"
            ]),
            Meal(title: "Colación 2", items: [
                "1 durazno",
                "1 puñado de cacahuates naturales"
            ]),
            Meal(title: "Cena", items: [
                "Ensalada con 100 g de pollo, espinacas, champiñones y aguacate",
                "2 tortillas de maíz",
                "1 taza de té sin azúcar"
            ])
        ]),
        
        Day(name: "Miercoles", meals: [
            Meal(title: "Desayuno", items: [
                "Licuado con 200 ml de leche de almendra, 40 g de avena, 1 kiwi y canela",
                "1 puñado de almendras"
            ]),
            Meal(title: "Colación 1", items: [
                "1 taza de palomitas naturales (sin mantequilla)",
                "1 taza de jícama con limón"
            ]),
            Meal(title: "Comida", items: [
                "120 g de carne de res en fajitas con cebolla y pimientos",
                "½ taza de arroz integral",
                "1 taza de brócoli al vapor con 1 cda. de aceite de oliva"
            ]),
            Meal(title: "Colación 2", items: [
                "1 naranja",
                "10 nueces"
            ]),
            Meal(title: "Cena", items: [
                "2 tostadas de maíz con guacamole y huevo revuelto",
                "1 taza de zanahoria rallada con limón"
            ])
        ]),
        
        Day(name: "Jueves", meals: [
            Meal(title: "Desayuno", items: [
                "Mugcake de avena y plátano (40 g avena, 1 huevo, ½ plátano, canela)",
                "1 cda. de crema de cacahuate",
                "1 taza de fresas"
            ]),
            Meal(title: "Colación 1", items: [
                "10 almendras",
                "1 taza de pepino con limón"
            ]),
            Meal(title: "Comida", items: [
                "120 g de pollo en tinga con cebolla y jitomate",
                "2 tostadas de maíz",
                "½ taza de frijoles",
                "1 taza de ensalada de lechuga con zanahoria y limón"
            ]),
            Meal(title: "Colación 2", items: [
                "1 kiwi",
                "10 cacahuates"
            ]),
            Meal(title: "Cena", items: [
                "1 quesadilla con tortilla de maíz y 50 g de queso sin lactosa",
                "1 taza de champiñones salteados",
                "1 taza de té sin azúcar"
            ])
        ]),
        
        Day(name: "Viernes", meals: [
            Meal(title: "Desayuno", items: [
                "1 omelette (2 claras + 1 yema) con espinacas y champiñones",
                "2 tortillas de maíz",
                "½ taza de frijoles",
                "½ taza de kiwi"
            ]),
            Meal(title: "Colación 1", items: [
                "10 almendras",
                "1 taza de zanahoria con limón"
            ]),
            Meal(title: "Comida", items: [
                "120 g de pescado al horno con ajo y limón",
                "½ taza de arroz integral",
                "1 taza de ensalada de lechuga, pepino y jitomate con 1 cda. de aceite de oliva",
                "½ taza de garbanzos"
            ]),
            Meal(title: "Colación 2", items: [
                "1 durazno",
                "10 cacahuates"
            ]),
            Meal(title: "Cena", items: [
                "2 tostadas de maíz con pollo deshebrado y guacamole",
                "1 taza de jícama con limón y chile en polvo"
            ])
        ]),
        
        Day(name: "Sábado", meals: [
            Meal(title: "Desayuno", items: [
                "Licuado de 200 ml de leche de almendra, 40 g de avena, ½ plátano y canela",
                "10 nueces"
            ]),
            Meal(title: "Colación 1", items: [
                "1 taza de pepino con chile y limón",
                "1 puñado de almendras"
            ]),
            Meal(title: "Comida", items: [
                "120 g de bistec de res a la plancha",
                "½ taza de puré de papa",
                "1 taza de brócoli y coliflor al vapor con 1 cda. de aceite de oliva",
                "½ taza de frijoles"
            ]),
            Meal(title: "Colación 2", items: [
                "1 taza de fresas y zarzamoras",
                "1 cda. de crema de cacahuate"
            ]),
            Meal(title: "Cena", items: [
                "1 quesadilla de tortilla de maíz con queso sin lactosa",
                "1 taza de ensalada de espinacas con champiñones"
            ])
        ]),
        
        Day(name: "Domingo", meals: [
            Meal(title: "Desayuno", items: [
                "2 hotcakes de avena con plátano (40 g de avena, ½ plátano, 1 huevo)",
                "1 cda. de mantequilla de almendra",
                "½ taza de moras"
            ]),
            Meal(title: "Colación 1", items: [
                "1 naranja",
                "10 almendras"
            ]),
            Meal(title: "Comida", items: [
                "120 g de pollo en fajitas con cebolla y pimientos",
                "2 tortillas de maíz",
                "½ taza de lentejas",
                "1 taza de ensalada de lechuga con zanahoria"
            ]),
            Meal(title: "Colación 2", items: [
                "1 manzana",
                "10 nueces"
            ]),
            Meal(title: "Cena", items: [
                "2 tostadas de maíz con atún, aguacate y jitomate",
                "1 taza de jícama con chile y limón"
            ])
        ])
    ]
    
    // Control de visibilidad
    @State private var showTextForDay: [Bool] = Array(repeating: false, count: 7)
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("LogoApp")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                VStack (alignment: .leading){
                    Text("¡Bienvenida!")
                        .font(.system(size: 20, design: .default))
                        .foregroundColor(.black)
                    
                    Text("Andrea Romero")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.bottom, 10)
                }
                Spacer()
                Image("Perfil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .padding(.leading, 10)
            }
            
            HStack {
                Text("Plan Básico")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Circle()
                    .fill(Color.primaryApp)
                    .frame(width: 6, height: 6)
                Text("Desde 2024")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 10)
            
            Image("ContrataPlanPremium1")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300, height: 100)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding(.horizontal, 30)
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(0..<daysOfWeek.count, id: \.self) { dayIndex in
                    Button(action: {
                        withAnimation {
                            showTextForDay[dayIndex].toggle()
                        }
                    }) {
                        Image(daysOfWeek[dayIndex].name)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 140)
                            .padding(.top, 20)
                    }
                    
                    if showTextForDay[dayIndex] {
                        VStack(alignment: .leading) {
                            Text("Día \(dayIndex + 1)")
                                .font(.system(size: 25, weight: .heavy))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.top, 20)
                                .padding(.bottom, 5)
                            
                            ForEach(daysOfWeek[dayIndex].meals, id: \.title) { meal in
                                Text(meal.title)
                                    .font(.system(size: 18, weight: .black))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .padding(.bottom, 5)
                                    .padding(.leading, 10)
                                
                                ForEach(meal.items, id: \.self) { item in
                                    Text(item)
                                        .font(.system(size: 13, weight: .light))
                                        .padding(.leading, 10)
                                }
                                .padding(.bottom, 5)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    HomeView()
}
