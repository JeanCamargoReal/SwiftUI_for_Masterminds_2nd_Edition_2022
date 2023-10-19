//
//  ContentView.swift
//  ProgressView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentValue: Float = 5

    var body: some View {
        VStack {
            ProgressView(value: currentValue, total: 10)
            Slider(value: $currentValue, in: 0...10)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
