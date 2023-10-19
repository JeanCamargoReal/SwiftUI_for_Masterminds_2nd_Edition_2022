//
//  ToggleButton.swift
//  ToggleView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 19/10/23.
//

import SwiftUI

struct ToggleButton: View {
    @State private var currentState: Bool = true

    var body: some View {
        HStack {
            Toggle(isOn: $currentState, label: {
                Label("Send", systemImage: "mail")
            })
            .toggleStyle(.button)
        }.padding()
    }
}

#Preview {
    ToggleButton()
}
