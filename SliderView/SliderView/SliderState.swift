//
//  SliderState.swift
//  SliderView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 19/10/23.
//

import SwiftUI

struct SliderState: View {
    @State private var currentValue: Float = 5
    @State private var textActive: Bool = false

    var body: some View {
        VStack {
            Text("Current Value: \(currentValue.formatted(.number.precision(.fractionLength(0))))")
                .padding()
                .background(textActive ? .yellow : .clear)
            Slider(value: $currentValue, in: 0...10, step: 1.0, onEditingChanged: { self.textActive = $0 })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SliderState()
}
