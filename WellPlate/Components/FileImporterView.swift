//
//  FileImporterView.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 16/02/25.
//

import SwiftUI

struct FileImporterView: View {
    @Binding var selectedFileURL: URL?
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack (alignment: .leading){
            Button(action: {
                isPresented.toggle()
            }) {
                HStack {
                    Image(systemName: "icloud.and.arrow.up.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primaryAppColorOpacity)
                    Text("Seleccionar archivo")
                        .font(.body)
                        .foregroundColor(.gray)
                        .padding(.leading, 5)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            }
            
            if let fileURL = selectedFileURL {
                Text("Archivo seleccionado: \(fileURL.lastPathComponent)")
                    .foregroundColor(.green)
                    .font(.footnote)
            }
        }
        .fileImporter(isPresented: $isPresented, allowedContentTypes: [.data], onCompletion: { result in
            switch result {
            case .success(let url):
                selectedFileURL = url
            case .failure(let error):
                print("Error al seleccionar archivo: \(error.localizedDescription)")
            }
        })
    }
}

struct FileImporterView_Previews: PreviewProvider {
    static var previews: some View {
        FileImporterView(selectedFileURL: .constant(nil), isPresented: .constant(false))
            .padding()
    }
}
