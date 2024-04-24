//
//  TabviewTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 4/03/24.
//

import SwiftUI

struct TabviewTwo: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.blue)
                .padding()
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.red)
                .padding()
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.green)
                .padding()
            //Aqui tambien podemos meter tabItem
            Text("Hola mundo")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
        }
        .tint(Color.black)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabviewTwo()
}
