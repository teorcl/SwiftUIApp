//
//  TextEditorOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 19/02/24.
//

import SwiftUI

struct TextEditorOne: View {
    
    @State var text: String = "Writte here your message"
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .font(.title)
                .textInputAutocapitalization(.none)
                .autocorrectionDisabled()
                .foregroundStyle(.blue)
                .lineSpacing(12)
                .padding()
                .onChange(of: text) { oldValue, newValue in
                    counter = newValue.count
                }
            
            Text("\(counter)")
                .foregroundStyle( counter <= 280 ? .green : .red )
                .font(.largeTitle)
        }
    }
}

#Preview {
    TextEditorOne()
}
