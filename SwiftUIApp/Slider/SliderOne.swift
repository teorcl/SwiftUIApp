//
//  SliderOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 27/02/24.
//

import SwiftUI

struct SliderOne: View {
    
    @State var iphoneCounter: Float = 0.0
    @State var isEditing: Bool = false
    
    var body: some View {
        Form {
            Slider(
                value: $iphoneCounter,
                in: 1...10,
                step: 1) {
                    Text("Number iphones")
                } minimumValueLabel: {
                    Text("min")
                } maximumValueLabel: {
                    Text("max")
                } onEditingChanged: { editing in
                    isEditing = editing
                }
            Text("\(iphoneCounter)")
                .foregroundStyle(isEditing ? .green : .red)
        }

    }
}

#Preview {
    SliderOne()
}
