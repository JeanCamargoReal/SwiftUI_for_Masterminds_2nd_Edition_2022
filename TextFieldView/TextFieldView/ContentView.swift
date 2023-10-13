//
//  ContentView.swift
//  TextFieldView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 13/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = "Default Tile"
    @State private var titleInput: String = ""

    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .lineLimit(1)
                .padding()
                .background(.yellow)
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
            Button("Save") {
                title = titleInput
                titleInput = ""
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
