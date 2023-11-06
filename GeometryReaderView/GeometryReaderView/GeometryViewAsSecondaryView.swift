//
//  GeometryViewAsSecondaryView.swift
//  GeometryReaderView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/11/23.
//

import SwiftUI

struct GeometryViewAsSecondaryView: View {
    @State private var size: CGSize = .zero

    var body: some View {
        VStack {
            Image("appleLogo")
                .resizable()
                .scaledToFit()
                .background(
                    GeometryReader { geometry in
                        Color.clear
                            .onAppear {
                                size = geometry.size
                            }
                    }
                )
            Text("\(Int(size.width)) x \(Int(size.height))")
        }.padding(100)
    }
}

#Preview {
    GeometryViewAsSecondaryView()
}
