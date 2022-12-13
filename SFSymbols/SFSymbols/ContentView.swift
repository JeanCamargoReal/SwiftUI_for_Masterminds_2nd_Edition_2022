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
            Image(systemName: "envelope")
                .font(Font.system(size: 100).weight(.semibold))
                .symbolVariant(.fill)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
