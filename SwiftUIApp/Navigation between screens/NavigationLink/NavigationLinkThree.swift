//
//  NavigationLinkThree.swift
//  SwiftUIApp
//
//  Created by Teodoro Calle Lara on 18/05/24.
//

import SwiftUI

struct NavigationLinkThree: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Show an Integeger", value: 42)
                NavigationLink("Show a string", value: "Hello, world!")
                NavigationLink("Show a Double", value: Double.pi)
            }
            .navigationDestination(for: Int.self) { int in
                Text("Received Int: \(int)") // Recordemos que esto es un view
            }
            .navigationDestination(for: Double.self) { double in
                Text("Received Double: \(double)")
            }
            .navigationDestination(for: String.self) { string in
                Text("Received String: \(string)")
            }
            .navigationTitle("Select a value")
        }
    }
}

#Preview {
    NavigationLinkThree()
}
