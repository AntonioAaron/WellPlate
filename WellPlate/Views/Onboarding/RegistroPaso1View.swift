import SwiftUI

struct RegistroPaso1View: View {
    @Binding var isOnboardingComplete: Bool
    
    @State private var nombre: String = ""
    @State private var nombreUsuario: String = ""
    @State private var telefono: String = ""
    @State private var email: String = ""
    @State private var confirmarEmail: String = ""
    
    var body: some View {
//        NavigationView {
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
                    Text("Paso 1 de 3")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .trailing, vertical: .top))
                .padding(.horizontal, 30)
                
                Image("Paso1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 30)
                
                VStack(alignment: .leading) {
                    Text("Nombre")
                        .font(.callout.monospacedDigit())
                    CustomTextField(placeholder: "", text: $nombre)
                        .padding(.bottom, 10)
                    
                    Text("Nombre de usuario")
                        .font(.callout.monospacedDigit())
                    CustomTextField(placeholder: "", text: $nombreUsuario)
                        .padding(.bottom, 10)
                    
                    Text("Número telefónico")
                        .font(.callout.monospacedDigit())
                    CustomTextField(placeholder: "", text: $telefono)
                        .padding(.bottom, 10)
                    
                    Text("E-mail")
                        .font(.callout.monospacedDigit())
                    CustomTextField(placeholder: "", text: $email)
                        .padding(.bottom, 10)
                    
                    Text("Confirmar e-mail")
                        .font(.callout.monospacedDigit())
                    CustomTextField(placeholder: "", text: $confirmarEmail)
                        .padding(.bottom, 10)
                    
                }
                .padding(.top, 5)
                .padding(.horizontal, 30)
                
                NavigationLink(destination: RegistroPaso2View(isOnboardingComplete: $isOnboardingComplete)) {
                    Text("Ir a datos antropométricos")
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
//    }
}
//
//#Preview {
//    RegistroPaso1View()
//}
