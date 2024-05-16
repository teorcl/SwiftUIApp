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
                NavigationLink("Blue Link", destination: ColorDetail(color: .blue))
                NavigationLink("Red Link", destination: ColorDetail(color: .red))
                NavigationLink("Yellow Link", destination: ColorDetail(color: .yellow))
                
                // Este constructor sera el que reemplaza a el de arriba
                NavigationLink("Constructor de arriba deprecated") {
                    ColorDetail(color: .cyan)
                }
                
                //Este constructor es un poco mas abierto
                NavigationLink {
                    ColorDetail(color: .purple)
                } label: {
                    Label("Work Folder", systemImage: "folder")
                }

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
