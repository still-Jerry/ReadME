//
//  DetailView.swift
//  ReadME
//
//  Created by Anatolich Mixaill on 13.06.2022.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    var body: some View {
        VStack(alignment: .leading){
            TitileAndAuthorStack(book: book)
            Book.Image(title: book.title)
            Spacer()
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init())
    }
}
