//
//  ApplicationData.swift
//  MVVMExemple
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 04/09/23.
//

import SwiftUI

class ApplicationData: ObservableObject {
    @Published var userData: BookViewModel

    init() {
        userData = BookViewModel(book: BookModel(title: "Default Title", author: "Unknown"))
    }
}
