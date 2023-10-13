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
                .submitLabel(.continue)
                .onSubmit {
                    assignTitle()
                }
            HStack {
                Spacer()
                Button("Save") {
                    assignTitle()
                }
            }
            Spacer()
        }.padding()
    }

    func assignTitle() {
        title = titleInput
        titleInput = ""
    }
}

#Preview {
    ContentView()
}
