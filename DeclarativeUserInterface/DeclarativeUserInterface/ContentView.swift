//
//  ContentView.swift
//  DeclarativeUserInterface
//
//  Created by Jean Camargo on 01/08/23.
//

import SwiftUI

struct ContentView: View {

	@State private var title: String = "Default Title"
	@State private var titleInput: String = ""

	init() {
		_titleInput = State(initialValue: "Hello World")
	}

	var body: some View {
		VStack {
			HeaderView(title: $title)
			TextField("Insert Title", text: $titleInput)
				.textFieldStyle(.roundedBorder)
			Button {
				title = titleInput
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

	let counter: Int

	init(title: Binding<String>) {
		_title = title

		let sentence = _title.wrappedValue

		counter = sentence.count
	}

	var body: some View {
		Text("\(title)(\(counter))")
			.padding(10)
	}
}

struct HeaderView_Previews: PreviewProvider {
	static var previews: some View {
		HeaderView(title: .constant("My Preview Title"))
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
