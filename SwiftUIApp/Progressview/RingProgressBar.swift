//
//  RingProgressBar.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 23/02/24.
//

import SwiftUI

struct RingProgressBar: View {
    
    @Binding var animateTheRings: Bool
    @Binding var progressValueOne: CGFloat
    @Binding var progressValueTwo: CGFloat
    @Binding var progressValueThree: CGFloat
    
    let strawberry = Color(red: 1, green: 0.185, blue: 0.573)
    let lime = Color(red: 0.556, green: 0.979, blue: 0)
    let ice = Color(red: 0.451, green: 0.993, blue: 1)
    
    let animation = Animation.easeOut(duration: 3)
    
    var body: some View {
        ZStack {
            Color.black
            ring(for: strawberry, progress: progressValueOne)
                .frame(width: 165)
            ring(for: lime, progress: progressValueTwo)
                .frame(width: 128)
            ring(for: ice, progress: progressValueThree)
                .frame(width: 92)
        }.animation(animation,value: animateTheRings)
            .ignoresSafeArea()
    }
    
    @ViewBuilder
    private func ring(for color: Color, progress value: CGFloat) -> some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 16))
            .foregroundStyle(.tertiary)
            .overlay {
                Circle()
                    .trim(from: 0, to: value)
                    .stroke(color.gradient, style: StrokeStyle(lineWidth: 16, lineCap: .round))
            }
            .rotationEffect(.degrees(-90))
    }
}


