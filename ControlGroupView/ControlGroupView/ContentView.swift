//
//  ContentView.swift
//  ControlGroupView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "No option Selected"

    var body: some View {
        VStack {
            Text(message)
            ControlGroup {
                Button {
                    message = "First Option"
                } label: {
                    Label("First", systemImage: "trash")
                }
                Button {
                    message = "Second Option"
                } label: {
                    Label("Second", systemImage: "mail")
                }
            }.controlGroupStyle(.navigation)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
