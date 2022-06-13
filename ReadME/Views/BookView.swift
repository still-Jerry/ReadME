//
//  BookView.swift
//  ReadME
//
//  Created by Anatolich Mixaill on 13.06.2022.
//

import SwiftUI

struct TitileAndAuthorStack: View {
    let book: Book
    var body: some View {
        VStack(alignment: .leading){
            Text(book.title)
                .font(.title2)
            Text(book.author)
                .font(.title3)
            //                    .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}

extension Book {
  
    struct Image: View {
        let title: String
        var size: CGFloat?
        var body: some View {
            let symbol = SwiftUI.Image(title:title) ?? .init(systemName: "book")
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}
extension Image {
    init?(title: String){
    guard let character = title.first else{
        return nil
    }
        let symbolName = "\(character.lowercased()).square"
        self.init(systemName: symbolName)
    }
}
struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
        Book.Image(title: Book().title)
        Book.Image(title: "Book().title")
        }
    }
}
