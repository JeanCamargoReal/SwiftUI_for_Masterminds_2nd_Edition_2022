//
//  ContentView.swift
//  CombineAndSwiftUI
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 05/11/23.
//

import SwiftUI

class ContentViewData: ObservableObject {
    @Published var counter: Int = 0

    let timerPublisher = Timer.publish(every: 2, on: RunLoop.main, in: .common)
        .autoconnect()
}

struct ContentView: View {
    @ObservedObject var contentData = ContentViewData()

    var body: some View {
        Text("Counter: \(contentData.counter)")
            .onReceive(contentData.timerPublisher, perform: { _ in
                contentData.counter += 1
            })
    }
}

#Preview {
    ContentView()
}
