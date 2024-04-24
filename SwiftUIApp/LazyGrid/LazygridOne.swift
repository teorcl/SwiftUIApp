//
//  LazygridOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 28/02/24.
//

import SwiftUI

struct LazygridOne: View {
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))], content: {
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            })
            
            Divider()
            Divider()
            
            LazyHGrid(
                rows: [
                    GridItem(
                        .flexible(
                            minimum: 10,
                            maximum: 100
                        )
                    )
                ], content: {
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    LazygridOne()
}
