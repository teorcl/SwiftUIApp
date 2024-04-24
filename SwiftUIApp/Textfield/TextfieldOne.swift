//
//  TextfieldOne.swift
//  LearningSwiftUI
//
//  Created by Teodoro Calle Lara on 18/02/24.
//

import SwiftUI

struct TextfieldOne: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color(Color.gray).opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username) { oldValue, newValue in
                    print(oldValue)
                    print("New value: \(newValue)")
                }
            
            SecureField("Password", text: $password)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding(8)
                .font(.headline)
                .background(Color(Color.gray).opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: password) { oldValue, newValue in
                    print(oldValue)
                    print("Password value: \(newValue)")
                }
            Spacer()
        }
    }
}

#Preview {
    TextfieldOne()
}
