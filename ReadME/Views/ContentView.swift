//
//  ContentView.swift
//  ReadME
//
//  Created by Anatolich Mixaill on 13.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List(Library().sortedBooks, id: \.title ){ book in
            BookRow(book: book)
        }
        .navigationTitle("My Library")
        }
    }
}

struct BookRow: View {
    let book: Book
    var body: some View {
        NavigationLink(destination: DetailView(book: book)){
        HStack{
            Book.Image(title: book.title, size: 80)
            TitileAndAuthorStack(book: book).lineLimit(1)
        }.padding(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


