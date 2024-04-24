//
//  TabviewOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 4/03/24.
//

import SwiftUI

struct TabviewOne: View {
    var body: some View {
        TabView {
        
            FirstView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            
            SecondView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
            Text("Hola mundo")
                .tabItem {
                    Label("Message", systemImage: "message.fill")
                }
            
            ThirdView()
                .tabItem {
                    Label("Tecnology", systemImage: "externaldrive.connected.to.line.below.fill")
                }
        }
        .tint(.black)
    }
}

#Preview {
    TabviewOne()
}

struct FirstView: View {
    var body: some View {
        ZStack {
            Color.green // Color de fondo de toda la pantalla
                .edgesIgnoringSafeArea(.all) // Ignora los márgenes seguros
            
            Text("Contenido de la pantalla")
                .foregroundColor(.white) // Color del texto
        }
    }
}

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.red
                //.edgesIgnoringSafeArea(.all) // Ignora los márgenes seguros
            
            Text("Contenido de la pantalla 2")
                .foregroundColor(.white) // Color del texto
        }
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Image(systemName: "macbook.and.visionpro")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            Text("Macbook and vision")
        }
    }
}
