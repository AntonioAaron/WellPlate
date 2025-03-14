//
//  CustomTextField.swift
//  WellPlate
//
//  Created by Antonio Aaron Hernandez on 12/02/25.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .cornerRadius(10)
            .foregroundColor(.black)
            .padding(.horizontal)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.15), lineWidth: 2)
            )
    }
}
