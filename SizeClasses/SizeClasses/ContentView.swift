//
//  ContentView.swift
//  SizeClasses
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalClass

    var body: some View {
        Group {
            if horizontalClass == .compact {
                VStack(spacing: 0) {
                    HeaderView(isCompact: true)
                    BodyView()
                }
            } else {
                HStack(spacing: 0) {
                    HeaderView(isCompact: false)
                    BodyView()
                }
            }
        }.ignoresSafeArea()
    }
}

struct HeaderView: View {
    let isCompact: Bool

    var body: some View {
        Text("Food Menu")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: isCompact ? 150 : .infinity)
            .background(.yellow)
    }
}

struct BodyView: View {
    var body: some View {
        Text("Content Title")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(.gray)
    }
}

#Preview {
    ContentView()
}
