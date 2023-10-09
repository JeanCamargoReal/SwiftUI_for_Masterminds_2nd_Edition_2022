//
//  ContentView.swift
//  Menu
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Button("Press to Select", action: {})
                .buttonStyle(.bordered)
                .contextMenu(menuItems: {
                    Button("Option 1", action: performOption1)
                    Button("Option 2", action: performOption2)
                    Button("Option 3", action: performOption3)
                })
            Spacer()
        }
        .padding()
    }

    func performOption1() {
        print("This is Option 1")
    }

    func performOption2() {
        print("This is Option 1")
    }

    func performOption3() {
        print("This is Option 1")
    }
}

#Preview {
    ContentView()
}
