//
//  ContentView.swift
//  FilmDetail
//
//  Created by N N on 20/09/2022.
//

import SwiftUI
//MovieDetailView est l'écran enfant de l'écran MovieList 
struct MovieDetailView: View {
    
    let movie: Movie
    
    var body: some View {

        NavigationView {
            VStack {
                Text(movie.title)
                    .font(.title)
                    .bold()
                    .padding()
                Text(movie.director)
                    .font(.custom("Chalkduster", size: 18))
                    .font(.title3)
                    .bold()
                    .padding()
                Text(String(movie.year))
    //            Text("\(year)") > interpolation works as well
                    .italic()
                Image(movie.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(movie.movieType.rawValue)
                    .italic()
    //                .padding()
                Text(movie.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
//            Add likeButton view
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    LikeButton()
                }
            }
        }.accentColor(.purple)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: .preview)
    }
}
