//
//  ContentView.swift
//  DeclarativeUserInterface
//
//  Created by Jean Camargo on 01/08/23.
//

import SwiftUI

struct ContentView: View {

	@State private var title: String = "Default Title"
	@State private var titleActive: Bool = false
	@State private var titleInput: String = ""

	var body: some View {
		VStack {
			HeaderView(title: $title)
			TextField("Insert Title", text: $titleInput)
				.textFieldStyle(.roundedBorder)
			Button {
				title = "My New Title"
				titleInput = ""
			} label: {
				Text("Change Title")
			}
			Spacer()
		}.padding()
	}
}

struct HeaderView: View {
	@Binding var title: String

	var body: some View {
		Text(title)
			.padding(10)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
