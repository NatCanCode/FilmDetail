//
//  AddMoviebutton.swift
//  FilmDetail
//
//  Created by N N on 21/09/2022.
//

import SwiftUI

struct AddMoviebutton: View {
    
    @State private var showingAddMovieMenu = false
    @Binding var saveMovies: [Movie]
    
    var body: some View {
        Button() {
            showingAddMovieMenu.toggle()
        } label: {
            Image(systemName: "plus.circle.fill")
                .foregroundColor(.purple)
                .font(.body)
        }
        .sheet(isPresented: $showingAddMovieMenu) {
            AddMovieView(saveMovies: $saveMovies)      
        }
    }
}


struct AddMoviebutton_Previews: PreviewProvider {
    static var previews: some View {
        AddMoviebutton(saveMovies: .constant([.preview]))
    }
}
