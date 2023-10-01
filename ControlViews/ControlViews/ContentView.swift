//
//  ContentView.swift
//  ControlViews
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var expanded: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            Text("Default Title")
                .frame(minWidth: 0, maxWidth: expanded ? .infinity: 150, maxHeight: 50)
                .background(Color.yellow)
            Button(action: {
                expanded.toggle()
            }, label: {
                VStack {
                    Image(expanded ? "contract" : "expand")
                        .renderingMode(.template)
                    Text(expanded ? "Contract" : "Expand")
                }
            })
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
