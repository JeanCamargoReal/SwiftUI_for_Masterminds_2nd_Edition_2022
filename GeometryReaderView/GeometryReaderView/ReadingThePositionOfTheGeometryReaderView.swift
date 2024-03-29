//
//  ReadingThePositionOfTheGeometryReaderView.swift
//  GeometryReaderView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 06/11/23.
//

import SwiftUI

struct ReadingThePositionOfTheGeometryReaderView: View {
    var body: some View {
        GeometryReader { geometry in
            let globalX = Int(geometry.frame(in: .global).origin.x)
            let globalY = Int(geometry.frame(in: .global).origin.y)

            Text("Position: \(globalX)/\(globalY)")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }.frame(width: 200, height: 250)
            .background(.gray)
    }
}

#Preview {
    ReadingThePositionOfTheGeometryReaderView()
}
