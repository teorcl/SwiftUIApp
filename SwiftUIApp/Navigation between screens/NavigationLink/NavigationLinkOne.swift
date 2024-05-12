//
//  NavigationLinkOne.swift
//  SwiftUIApp
//
//  Created by Teodoro Calle Lara on 11/05/24.
//

import SwiftUI

struct NavigationLinkOne: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Blue", destination: ColorDetail(color: .blue))
                NavigationLink("Red", destination: ColorDetail(color: .red))
                NavigationLink("Yellow", destination: ColorDetail(color: .yellow))
            }
            .navigationTitle("Colors")
            
            Text("Select a Color")
        }
    }
}

struct ColorDetail: View {
    var color: Color
    
    var body: some View {
        color
            .frame(width: 200, height: 200)
            .navigationTitle(color.description.capitalized)
    }
}

#Preview {
    NavigationLinkOne()
}
