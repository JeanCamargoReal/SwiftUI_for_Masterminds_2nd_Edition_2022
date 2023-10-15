//
//  ContentView.swift
//  TextEditorView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""

    var body: some View {
        TextEditor(text: $text)
            .multilineTextAlignment(.leading)
            .lineSpacing(10)
            .disableAutocorrection(true)
            .padding(8)
    }
}

#Preview {
    ContentView()
}
