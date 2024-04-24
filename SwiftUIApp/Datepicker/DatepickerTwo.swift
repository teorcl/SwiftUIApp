//
//  DatepickerTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 20/02/24.
//

import SwiftUI

struct DatepickerTwo: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        Form {
            DatePicker(
                "Fecha",
                selection: $currentDate,
                in: Date()...,
                displayedComponents: .date
            ).padding(12)
            
            Text(
                currentDate,
                style: .date
            ).bold()
        }
    }
}

#Preview {
    DatepickerTwo()
}
