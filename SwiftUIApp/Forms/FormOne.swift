//
//  FormOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 29/02/24.
//

import SwiftUI

struct FormOne: View {
    
    @State var deviceName: String = "Iphone 15 pro"
    @State var isConnected: Bool = false
    @State var fecha: Date = Date()
    @State var color: Color = .blue
    
    var body: some View {
        Form {
            Section("Configuración") {
                TextField("Device name", text: $deviceName)
                Toggle("Wi-Fi", isOn: $isConnected)
            }
            
            Section {
                DatePicker("Fecha", selection: $fecha)
                ColorPicker("Color", selection: $color)
            } header: {
                Text("Account")
            } footer: {
                HStack {
                    Spacer()
                    
                    Label("Version 1.0", systemImage: "iphone")
                    Spacer()
                    
                }
            }
            
        }
    }
}

#Preview {
    FormOne()
}
