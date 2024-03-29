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
                .onChange(of: nameInput) {
                    if nameInput.count > 10 {
                        nameInput = String(nameInput.prefix(10))
                    }
                }
            TextField("Insert Surname", text: $surnameInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .background(focusName == .surname ? Color(white: 0.9) : .white)
                .focused($focusName, equals: .surname)
                .onChange(of: surnameInput) {
                    if surnameInput.count > 15 {
                        surnameInput = String(surnameInput.prefix(15))
                    }
                }
            HStack {
                Spacer()
                Button("Save") {
                    let tempName = nameInput.trimmingCharacters(in: .whitespaces)
                    let tempSurname = surnameInput.trimmingCharacters(in: .whitespaces)
                    if !tempName.isEmpty && !tempSurname.isEmpty {
                        title = nameInput + " " + surnameInput
                        focusName = nil
                    }
                }
                .disabled(nameInput.isEmpty || surnameInput.isEmpty)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
