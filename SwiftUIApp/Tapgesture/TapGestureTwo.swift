//
//  TapGestureTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 14/03/24.
//

import SwiftUI

struct TapGestureTwo: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(.red)
            .frame(width: 100, height: 100)
            .onTapGesture {
                debugPrint("View tapped")
            }
    }
}

#Preview {
    TapGestureTwo()
}
