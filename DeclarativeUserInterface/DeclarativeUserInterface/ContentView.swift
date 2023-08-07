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

	var body: some View {
		VStack {
			Text(_title.wrappedValue)
				.padding(10)
			TextField("Insert Title", text: _titleInput.projectedValue)
				.textFieldStyle(.roundedBorder)
			Button {
				_title.wrappedValue = _titleInput.wrappedValue
				_titleInput.wrappedValue = ""
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
