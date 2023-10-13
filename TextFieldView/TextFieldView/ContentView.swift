//
//  ContentView.swift
//  TextFieldView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 13/10/23.
//

import SwiftUI

enum FocusName: Hashable {
    case name
    case surname
}

struct ContentView: View {
    @FocusState var focusName: FocusName?
    @State private var title: String = "Default Tile"
    @State private var nameInput: String = ""
    @State private var surnameInput: String = ""

    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .lineLimit(1)
                .padding()
                .background(.yellow)
            TextField("Insert Name", text: $nameInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .background(focusName == .name ? Color(white: 0.9) : .white)
                .focused($focusName, equals: .name)
            TextField("Insert Surname", text: $surnameInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .background(focusName == .surname ? Color(white: 0.9) : .white)
                .focused($focusName, equals: .surname)
            HStack {
                Spacer()
                Button("Save") {
                    title = nameInput + " " + surnameInput
                    focusName = nil
                }
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
