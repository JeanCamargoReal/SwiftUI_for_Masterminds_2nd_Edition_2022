//
//  BookViewModel.swift
//  MVVMExemple
//
//  Created by Jean Paulo Marcel Henrique de Camargo on 10/09/23.
//

import Foundation

struct BookViewModel {
    var book: BookModel
    var header: String {
        return book.title + "" + book.author
    }
}
