//
//  AdaptingAnImageView.swift
//  GeometryReaderView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/11/23.
//

import SwiftUI

struct AdaptingAnImageView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image("appleLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 4)
                    .background(.gray)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
}

#Preview {
    AdaptingAnImageView()
}
