//
//  ContentView.swift
//  MVVMExemple
//
//  Created by Jean Camargo on 08/08/23.
//

import SwiftUI

class ContentViewData: ObservableObject {
    @Published var titleInput: String = ""
    @Published var authorInput: String = ""
}

struct ContentView: View {
    @ObservedObject var contentData = ContentViewData()
    @EnvironmentObject var appData: ApplicationData
        
    var body: some View {
        VStack(spacing: 8) {
            Text(appData.userData.header)
                .padding(10)
            TextField("Insert Title", text: $contentData.titleInput)
                .textFieldStyle(.roundedBorder)
            TextField("Insert Author", text: $contentData.authorInput)
                .textFieldStyle(.roundedBorder)
            Button {
                appData.userData.book.title = contentData.titleInput
                appData.userData.book.author = contentData.authorInput
            } label: {
                Text("Save")
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ApplicationData())
    }
}
