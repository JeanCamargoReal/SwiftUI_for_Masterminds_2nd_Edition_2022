//
//  StepViewModifyingTheInterface.swift
//  StepperView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 20/10/23.
//

import SwiftUI

struct StepViewModifyingTheInterface: View {
    @State private var currentValue: Float = 0
    @State private var goingUp: Bool = true

    var body: some View {
        VStack {
            HStack {
                Text("Current Value: \(currentValue.formatted(.number.precision(.fractionLength(0))))")
                Image(systemName: goingUp ? "arrow.up" : "arrow.down")
                    .foregroundColor(goingUp ? .green : .red)
                Stepper("", onIncrement: {
                    currentValue += 5
                    goingUp = true
                }, onDecrement: {
                    currentValue -= 5
                    goingUp = false
                }).labelsHidden()
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    StepViewModifyingTheInterface()
}
