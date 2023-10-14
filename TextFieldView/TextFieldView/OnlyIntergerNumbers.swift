//
//  OnlyIntergerNumbers.swift
//  TextFieldView
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 14/10/23.
//

import SwiftUI

class OnlyIntergerNumbersData: ObservableObject {
    @Published var title: String = "Default Name"
    @Published var numberInput: String = ""
    var currentNumber = ""
}

struct OnlyIntergerNumbers: View {
    @ObservedObject var contentData = OnlyIntergerNumbersData()

    var body: some View {
        VStack(spacing: 10) {
            Text(contentData.title)
                .padding()
                .background(.yellow)
            TextField("Insert Number", text: $contentData.numberInput)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .keyboardType(.numbersAndPunctuation)
                .onChange(of: contentData.numberInput) {
                    if !contentData.numberInput.isEmpty {
                        if Int(contentData.numberInput) != nil {
                            contentData.currentNumber = contentData.numberInput
                        } else {
                            contentData.numberInput = contentData.currentNumber
                        }
                    } else {
                        contentData.currentNumber = ""
                    }
                }
            HStack {
                Spacer()
                Button("Save") {
                    contentData.title = contentData.numberInput
                    contentData.numberInput = ""
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OnlyIntergerNumbers()
}
