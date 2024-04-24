//
//  ToggleOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 25/02/24.
//

import SwiftUI

struct ToggleOne: View {
    
    @State var accepted: Bool = false
    
    var body: some View {
        Form {
            Toggle("Quieres comer", isOn: $accepted).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            Text("\(accepted.description)").padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
    }
}

#Preview {
    ToggleOne()
}
