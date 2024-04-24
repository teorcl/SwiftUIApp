//
//  Sheet.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 5/03/24.
//

import SwiftUI

struct Sheet: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Bienvenidos a la primera pantalla")
            Button {
                isPresented = true
            } label: {
                Label("Ir a pantalla 2", systemImage: "line.diagonal.arrow")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }

        }.sheet(isPresented: $isPresented, onDismiss: {isPresented = false}, content: {
            ZStack {
                Color.red.ignoresSafeArea()
                Button("Volver") {
                    isPresented = false
                }
                .padding()
                .foregroundStyle(.white)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
        })
    }
}

#Preview {
    Sheet()
}
