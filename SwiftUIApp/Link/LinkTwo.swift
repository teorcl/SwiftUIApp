//
//  LinkTwo.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 24/02/24.
//

import SwiftUI

struct LinkTwo: View {
    var body: some View {
        Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
            Label("Setting", systemImage: "gear")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background( Color.red )
                .clipShape(RoundedRectangle(cornerRadius: 16))
        })
    }
}

#Preview {
    LinkTwo()
}
