//
//  ProgressViewOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 23/02/24.
//

import SwiftUI

struct ProgressViewOne: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            if isLoading {
                ProgressView("Loading")
                    .scaleEffect(2)
                
            }
            
            Button("Touch Me") {
                isLoading = !isLoading
            }.padding(10)
                .foregroundStyle(.white)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(.blue)
                )
                
        }
    }
}

#Preview {
    ProgressViewOne()
}
