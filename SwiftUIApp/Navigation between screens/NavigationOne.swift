//
//  NavigationOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 3/03/24.
//

import SwiftUI

struct NavigationOne: View {
    var body: some View {
        NavigationView {
            List {
                
                NavigationLink("Option menu 1") {
                    Text("Dentro de la opción 1")
                }
                
                NavigationLink("Option menu 2") {
                    Text("Vista 2")
                }
                
                NavigationLink("Option menu 3") {
                    Button("Tap here") {
                        print("Hola mundo")
                    }
                    .padding(20)
                    .background(.red)
                        .foregroundStyle(.white)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Tap me") {
                        print("Presionado")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        print("Done pressed")
                    }
                }
            }
            .navigationTitle("Menú principal")
            .navigationBarTitleDisplayMode(.inline) //.large .automatic
            .toolbar(.visible) // .hidden para ocultar
            
        }
    }
}

#Preview {
    NavigationOne()
}
