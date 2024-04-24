//
//  ContextMenuTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 10/03/24.
//

import SwiftUI

struct ContextMenuTwo: View {
    
    @State private var backgroundColor: Color = Color.red
    
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .contextMenu(
                ContextMenu(
                    menuItems: {
                        Button("Red") {
                            backgroundColor = .red
                        }
                        Button("Blue") {
                            backgroundColor = .blue
                        }
                        Button("Green") {
                            backgroundColor = .green
                        }
                    }
                )
            )
            
    }
}

#Preview {
    ContextMenuTwo()
}
