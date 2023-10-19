//
//  ContentView.swift
//  ToggleView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentState: Bool = true

    var body: some View {
        VStack {
            Toggle(isOn: $currentState, label: {
                Text(currentState ? "On" : "Off")
            })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
