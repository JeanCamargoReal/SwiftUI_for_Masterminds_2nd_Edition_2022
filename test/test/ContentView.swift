//
//  ContentView.swift
//  test
//
//  Created by Jean Camargo on 10/12/22.
//

import SwiftUI

struct ContentView: View {

    let number: Float = 30.87142

    var body: some View {
        VStack {
            Text("Hello World")
                .padding(EdgeInsets(top: 0.0, leading: 40.0, bottom: 0.0, trailing: 40.0))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
