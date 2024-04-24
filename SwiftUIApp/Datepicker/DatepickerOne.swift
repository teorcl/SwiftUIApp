//
//  DatepickerOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 20/02/24.
//

import SwiftUI

struct DatepickerOne: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        DatePicker("Seleccionar fecha", selection: $currentDate)
            .padding(10)
            //.datePickerStyle(WheelDatePickerStyle())
            .datePickerStyle(GraphicalDatePickerStyle())
    }
}

#Preview {
    DatepickerOne()
}
