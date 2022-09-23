//
//  ContentView.swift
//  FilmDetail
//
//  Created by N N on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MovieList()
                .tabItem {
                    Image(systemName: "film.circle.fill")
                    Text("Films")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profil")
                }
        }.accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
