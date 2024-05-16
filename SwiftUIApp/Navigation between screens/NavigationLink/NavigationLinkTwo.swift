//
//  NavigationLinkTwo.swift
//  SwiftUIApp
//
//  Created by Teodoro Calle Lara on 15/05/24.
//

import SwiftUI

struct NavigationLinkTwo: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Blue", value: Color.blue)
                NavigationLink("Yellow", value: Color.yellow)
            }
            .navigationDestination(for: Color.self, destination: { color in
                DetailColor(color: color)
            })
            .navigationTitle("Colors")
            
            Text("Select a Color")
        }
    }
}

struct DetailColor: View {
    var color: Color
    
    var body: some View {
        color
            .frame(width: 200, height: 200)
            .navigationTitle(color.description.capitalized)
    }
}

#Preview {
    NavigationLinkTwo()
}
