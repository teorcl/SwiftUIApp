//
//  ColorpickerOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 21/02/24.
//

import SwiftUI

struct ColorpickerOne: View {
    
    @State var color: Color = Color.red
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20 )
                .foregroundStyle(color)
                .frame(width: 300, height: 100)
        
            ColorPicker("Selccionar color", selection: $color)
            
            Spacer()
        }.padding(60)
    }
}

#Preview {
    ColorpickerOne()
}
