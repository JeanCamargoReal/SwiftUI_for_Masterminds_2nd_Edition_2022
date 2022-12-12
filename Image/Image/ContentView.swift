//
//  ContentView.swift
//  Image
//
//  Created by Jean Camargo on 12/12/22.
//

import SwiftUI

struct ContentView: View {

    @ScaledMetric var customSize: CGFloat = 100

    var body: some View {
        VStack {
            Image("Toronto")
                .resizable()
                .frame(width: customSize, height: customSize)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
