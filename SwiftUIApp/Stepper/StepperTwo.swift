//
//  StepperTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 26/02/24.
//

import SwiftUI

struct StepperTwo: View {
    
    @State var iphoneCounter: Int = 1
    
    var body: some View {
        Form {
            Stepper(
                "Iphone \(iphoneCounter)") {
                    iphoneCounter += 1
                    // Aquí pueden ir mas acciones según sea necesario
                } onDecrement: {
                    iphoneCounter -= 1
                    // Aquí pueden ir mas acciones según sea necesario
            }
        }

    }
}

#Preview {
    StepperTwo()
}
