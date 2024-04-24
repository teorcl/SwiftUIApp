//
//  AlertOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 6/03/24.
//

import SwiftUI

struct Article: Identifiable {
    var id: String { title }
    let title: String
    let description: String
}

struct AlertOne: View {
    
    @State var isPresented: Bool = false
    @State private var article = Article(title: "Alerts in SwiftUI", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        
    
    var body: some View {
        VStack {
            Text("Ejemplo de Alert en SwiftUI")
                .font(.title)
                .fontWeight(.bold)
            
            Button("Disparar Alerta") {
                isPresented = true
            }
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .alert(isPresented: $isPresented, content: {
                    Alert(title: Text("Alerta Presentada"),
                          message: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                          primaryButton: .default(
                            Text("Aceptar"),
                            action: {
                                print("Hola aquí pueden ir acciones que se ejecuten al aceptar esa alerta")
                            }
                          ),
                          secondaryButton: .destructive(Text("Cancelar"))
                    )
                })
            
        }
    }
}

#Preview {
    AlertOne()
}

/*
 
 alert(
         article.title,
         isPresented: $isPresented,
         presenting: article) { article in
             Button("Aceptar") { }
             Button("Cancel", role: .destructive) {}
     } message: { article in
         Text(article.description)
     }
 
 */
