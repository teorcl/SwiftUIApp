//
//  TapGestureOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 14/03/24.
//

import SwiftUI

struct TapGestureOne: View {
    var body: some View {
        RoundedRectangle(cornerRadius:  20)
            .foregroundStyle(.green)
            .frame(width: 100, height: 100)
            .gesture(
                TapGesture(count: 1).onEnded({ _ in
                    debugPrint("view tapped")
                })
            )
            
            
    }
}

#Preview {
    TapGestureOne()
}
