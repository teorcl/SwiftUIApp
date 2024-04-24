//
//  ListOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 1/03/24.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let houseDevices = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac pro", imageName: "macpro.gen3"),
    Device(title: "Apple TV", imageName: "appletv"),
]

let workDevices = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Apple Watch", imageName: "applewatch"),
]
struct ListOne: View {
    var body: some View {
        List {
            Section("Home") {
                ForEach(houseDevices, id: \.title) {device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
            
            Section("Work") {
                ForEach(workDevices, id: \.title) {device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
            
        }
        //.listStyle(SidebarListStyle())
        .listStyle(.sidebar)
    }
}

#Preview {
    ListOne()
}
