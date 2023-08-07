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

	var body: some View {
		VStack {
			Text(title)
				.padding(10)
				.foregroundColor(titleActive ? .red : .gray)
			Button {
				title = "My New Title"
				titleActive = true
			} label: {
				Text("Change Title")
			}
			Spacer()
		}.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
