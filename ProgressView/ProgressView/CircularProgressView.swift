//
//  CircularProgressView.swift
//  ProgressView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 19/10/23.
//

import SwiftUI

struct CircularProgressView: View {
    @State private var currentValue: Float = 5

    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(.circular)
            Spacer()
        }.padding()
    }
}

#Preview {
    CircularProgressView()
}
