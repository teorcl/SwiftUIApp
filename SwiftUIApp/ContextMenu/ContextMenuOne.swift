//
//  ContextMenuOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 10/03/24.
//

import SwiftUI

struct ContextMenuOne: View {
    var body: some View {
        Text("Aprende algo")
            .padding()
            .contextMenu(
                ContextMenu(
                    menuItems: {
                        Text("SwiftUI")
                        Text("UIKit")
                        Text("XCode")
                    }
                )
            )
    }
}

#Preview {
    ContextMenuOne()
}
