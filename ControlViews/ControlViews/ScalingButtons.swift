//
//  ScalingButtons.swift
//  ControlViews
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 07/10/23.
//

import SwiftUI

struct ScalingButtons: View {
    var body: some View {
        VStack(spacing: 10) {
            Button(action: {
                print("Delete item")
            }, label: {
                HStack {
                    Image(systemName: "mail")
                        .imageScale(.large)
                    Text("Send")
                }
            })
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .controlSize(.large)
            Spacer()
        }
        .padding()
    }
}

struct ScalingButtons_Previews: PreviewProvider {
    static var previews: some View {
        ScalingButtons()
    }
}
