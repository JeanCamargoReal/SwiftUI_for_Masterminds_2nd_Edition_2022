//
//  ContentView.swift
//  ControlViews
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var colorActive: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            Text("Default Title")
                .padding()
                .background(colorActive ? Color.green : Color.clear)
            Button("Change Color") {
                changeColor()
            }
            Spacer()
        }
        .padding()
    }
}

extension ContentView {
    func changeColor() {
        colorActive.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
