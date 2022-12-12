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
                .cornerRadius(25)
                .padding(20)
                .shadow(color: Color.black, radius: 5, x: 5, y: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
