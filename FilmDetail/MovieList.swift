//
//  MovieList.swift
//  FilmDetail
//
//  Created by N N on 20/09/2022.
//

import SwiftUI
//MovieList est l'écran parent de l'écran MovieDetailView

struct MovieList: View {
    
    @State private var searchText = ""
    @State var saveMovies = [Movie]()
    
    var body: some View {
        
        NavigationView {
            VStack {
                SearchBarView()
                List {
                    //                Depuis peu, ForEach est intégré à l'intérieur de List. On peut remplacer ForEach par List et supprimer le 1er List
                    ForEach(Movie.all) { movie in
                        MovieRow(movie: movie)
                    }
                }
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .font(.title3)
                .navigationBarItems(trailing: AddMoviebutton(saveMovies: $saveMovies))
            }
            //            .searchable(text: $searchText, prompt: "Look for a movie")
        }
    }
}

struct MovieRow: View {
    
    let movie: Movie
    let imageName = "film"
    var body: some View {
        
        NavigationLink {
            MovieDetailView(movie: movie)
        }
    label: {
        //        label > each film row
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.purple)
                .font(.title2)
            Text(movie.title)
                .bold()
                .font(.title3)
            Text("(" + String(movie.year) + ")")
                .font(.title3)
        }.padding(10)
    }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
