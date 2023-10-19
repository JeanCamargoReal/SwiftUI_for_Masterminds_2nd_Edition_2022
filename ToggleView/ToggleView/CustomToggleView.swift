//
//  CustomToggleView.swift
//  ToggleView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 19/10/23.
//

import SwiftUI

struct MyStyle: ToggleStyle {
    func makeBody(configuration: MyStyle.Configuration) -> some View {
        HStack(alignment: .center) {
            configuration.label
            Spacer()
            Image(systemName: "checkmark.rectangle.fill")
                .font(.largeTitle)
                .foregroundColor(configuration.isOn ? .green : .gray)
                .onTapGesture {
                    configuration.$isOn.wrappedValue.toggle()
                }
        }
    }
}

struct CustomToggleView: View {
    @State private var currentState: Bool = false

    var body: some View {
        VStack {
            HStack {
                Toggle("Enable", isOn: $currentState)
                    .toggleStyle(MyStyle())
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    CustomToggleView()
}
