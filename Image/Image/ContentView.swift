//
//  ContentView.swift
//  Image
//
//  Created by Jean Camargo on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Toronto")
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(CGSize(width: 0.5, height: 0.5))
                .blur(radius: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
