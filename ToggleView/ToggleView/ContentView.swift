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
        HStack {
            Toggle("", isOn: $currentState)
                .labelsHidden()
            Text(currentState ? "On" : "Off")
                .padding()
                .background(Color(currentState ? .yellow : .gray))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
