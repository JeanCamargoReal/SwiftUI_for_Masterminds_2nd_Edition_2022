//
//  MyButtonStyle.swift
//  ControlViews
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 08/10/23.
//

import SwiftUI

struct MyStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let pressed = configuration.isPressed

        return configuration.label
            .padding()
            .border(Color.green, width: 5)
            .scaleEffect(pressed ? 1.2 : 1.0)
    }
}

struct MyButtonStyle: View {
    @State private var color = Color.gray

    var body: some View {
        VStack {
            Text("Default Title")
                .padding()
                .foregroundColor(color)

            Button("Change Color") {
                color = Color.green
            }.buttonStyle(MyStyle())
        }

    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonStyle()
    }
}
