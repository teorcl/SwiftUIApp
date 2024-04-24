//
//  PruebasDeCustomModifiers.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 25/02/24.
//

import SwiftUI

struct PruebasDeCustomModifiers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .fuentePersonalizada()
    }
}

#Preview {
    PruebasDeCustomModifiers()
}

extension View {
    public func fuentePersonalizada() -> some View {
        modifier(MyBigFont())
    }
}
