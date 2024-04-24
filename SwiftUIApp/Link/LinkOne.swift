//
//  LinkOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 24/02/24.
//

import SwiftUI

struct LinkOne: View {
    var body: some View {
        Link("Ir a Youtube", destination: URL(string: "https://www.youtube.com")!)
    }
}

#Preview {
    LinkOne()
}
