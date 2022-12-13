//
//  ContentView.swift
//  SFSymbols
//
//  Created by Jean Camargo on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "envelope")
            Image(systemName: "mic.badge.plus")
                .font(Font.system(size: 100).weight(.semibold))
                .symbolVariant(.fill)
//                .symbolRenderingMode(.multicolor)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.red, .blue)

            Label("Hello", systemImage: "envelope.circle")
                .font(.largeTitle)
                .labelStyle(.titleAndIcon)
                .imageScale(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
