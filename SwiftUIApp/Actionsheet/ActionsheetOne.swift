//
//  ActionsheetOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 7/03/24.
//

import SwiftUI

struct ActionsheetOne: View {
    
    @State private var isPresented = false
    @State private var backgroundColor = Color.black
    
    var body: some View {
        VStack {
            Text("Bienvenidos a los action sheet")
            Button("Cambiar color del boton", action: {
                isPresented = true
            }).padding()
                .foregroundStyle(.white)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .confirmationDialog(
                    "Cambiar backgrond color",
                    isPresented: $isPresented) {
                        Button("Red") { backgroundColor = .red }
                        Button("Green") { backgroundColor = .green }
                        Button("Blue") { backgroundColor = .blue }
                        Button("Cancel", role: .cancel) { }
                    } message: {
                        Text("Select background color")
                    }
        }
    }
}

#Preview {
    ActionsheetOne()
}
