//
//  ContentView.swift
//  Preferences
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/11/23.
//

import SwiftUI

struct BoxPreference: PreferenceKey {
    typealias Value = CGSize
    static var defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

struct ContentView: View {
    @State private var size: CGSize = .zero

    var body: some View {
        VStack {
            Image("appleLogo")
                .resizable()
                .scaledToFit()
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .preference(key: BoxPreference.self, value: geometry.size)

                    }
                )
            Text("\(Int(size.width)) x \(Int(size.height))")
        }.padding()
            .onPreferenceChange(BoxPreference.self) { value in
                size = value
            }
    }
}


#Preview {
    ContentView()
}
