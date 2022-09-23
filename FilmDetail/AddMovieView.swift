//
//  AddMovieView.swift
//  FilmDetail
//
//  Created by N N on 21/09/2022.
//

import SwiftUI

struct AddMovieView: View {
    
    @State var film = ""
    @State var author = ""
    @State var year = ""
    @State var pitch = ""
    @State var saveImage = ""
    @State var saveDescription = ""
    
    @State private var saveMovie = false
    
    @Binding var saveMovies: [Movie]
//    var genre = ["Action", "Sci-fi", "Thriller", "Drama"]
    @State private var selectedGenre = MovieType.Action
    
    @Environment(\.presentationMode) var presentationMode
    
    //    @State var showModal = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                Form {
                    Section("DETAILS") {
                        TextField("Title", text: $film)
                        TextField("Author", text: $author)
                        TextField("Year", text: $year)
                    }
                    Section("SYNOPSIS") {
                        TextField("Pitch", text: $pitch)
                            .frame(height: 150, alignment: .top)
                    }
                    Section("GENRE") {
                        Picker("", selection: $selectedGenre) {
                            ForEach(MovieType.allCases, id: \.self) {
                                Text($0.rawValue)
                            }
                        }
                        .labelsHidden()
                        .pickerStyle(.menu)
                        .padding(.horizontal, -13)
                        .accentColor(.purple)
                    }
                    
                }.navigationBarTitle(Text("Add a movie"), displayMode: .inline)
                    .navigationBarItems(
                        trailing:
                            HStack {
                                Button("Close") {
                                    presentationMode.wrappedValue.dismiss()
                                }
                            }.foregroundColor(.purple)
                    )
                
                Button {
                    saveMovies.append(Movie(title: film, director: author, year: Int(year) ?? 0, image: saveImage, movieType: selectedGenre, description: pitch))
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Save")
                }
                .sheet(isPresented: $saveMovie) {
                    AddMovieView(saveMovies: $saveMovies)
                }
                .foregroundColor(.purple)
                    .frame(height: 40, alignment: .top)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
//        AddMovieView(saveMovies: .constant([.preview]))
        AddMovieView(saveMovies: .constant([Movie(title: "", director: "", year: 0, image: "", movieType: MovieType.Action, description: "")]))
    }
}
