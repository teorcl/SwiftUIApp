//
//  ProgressViewTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 23/02/24.
//

import SwiftUI

struct ProgressViewTwo: View {
    
    @State var progress: Float = 0.0
    
    var body: some View {
        VStack {
            
            ProgressView(value: progress)
                .padding(EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40))
            
            Button("Touch me") {
                progress += 0.1
            }
            .padding(10)
            .foregroundStyle(.white)
                .background(
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.green)
            )
            
            Button("Touch me for decrease") {
                if progress == 0 {
                    return
                }
                progress -= 0.1
            }
            .padding(10)
            .foregroundStyle(.white)
                .background(
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.red)
            )
        }
    }
}

#Preview {
    ProgressViewTwo()
}
