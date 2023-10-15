//
//  ContentView.swift
//  SecureField
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pass: String = ""

    var body: some View {
        VStack(spacing: 15) {
            Text(pass)
                .padding()
            SecureField("Insert Password", text: $pass)
                .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
