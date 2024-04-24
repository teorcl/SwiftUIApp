//
//  StepperOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 26/02/24.
//

import SwiftUI

struct StepperOne: View {
    
    @State var iphoneCounter: Int = 1
    
    var body: some View {
        Form {
            Stepper(
                "Iphones  \(iphoneCounter)",
                value: $iphoneCounter, in: 1...5,
                step: 2
            )
        }
    }
}

#Preview {
    StepperOne()
}
