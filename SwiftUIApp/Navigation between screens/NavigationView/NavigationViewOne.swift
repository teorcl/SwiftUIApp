//
//  NavigationViewOne.swift
//  SwiftUIApp
//
//  Created by Teodoro Calle Lara on 11/05/24.
//

import SwiftUI

struct NavigationViewOne: View {
    var body: some View {
        NavigationView { // Will be deprecated
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationBarTitle("Home")
        }
    }
}

#Preview {
    NavigationViewOne()
}
