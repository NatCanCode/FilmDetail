//
//  SearchBarView.swift
//  FilmDetail
//
//  Created by N N on 21/09/2022.
//

import SwiftUI

struct SearchBarView: View {
    
    let names = ["Les Infiltrés", "Inception", "The Revenant"]
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            Text("Searching for \(searchText)")
                .searchable(text: $searchText, prompt: "Look for a movie")

//            List {
//                ForEach(searchResults, id: \.self) { name in
//                    NavigationLink(destination: Text(name)) {
//                        Text(name)
//                    }
//                }
//            }
//            .searchable(text: $searchText, prompt: "Look for a movie")
//            .navigationTitle("Searchable example")
        }
    }
    
//    var searchResults: [String] {
//        if searchText.isEmpty {
//            return names
//        } else {
//            return names.filter { $0.contains(searchText) }
//        }
//    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
