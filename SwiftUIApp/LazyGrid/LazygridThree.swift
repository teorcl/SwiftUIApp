//
//  LazygridThree.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 28/02/24.
//

import SwiftUI

struct LazygridThree: View {
    var elements = 1...500
    let gridItems = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, content: {
                ForEach(elements, id: \.self){ element in
                    VStack {
                        Circle().frame(height:40)
                        Text("\(element)")
                    }
                }
            })
        }
    }
}

#Preview {
    LazygridThree()
}
