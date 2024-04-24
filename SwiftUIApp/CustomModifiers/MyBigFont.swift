//
//  MyBigFont.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 25/02/24.
//

import SwiftUI

struct MyBigFont: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 40))
            .foregroundStyle(.blue)
    }
}
