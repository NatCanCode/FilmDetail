//
//  ProfileView.swift
//  FilmDetail
//
//  Created by N N on 21/09/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Image("Helen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .frame(width: 150, height: 150)
                    .cornerRadius(150)
                    .padding()
                Text("@Helen")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(10)
                Text("22/02/1996")
                    .padding(10)
                Text("Hi, I'm a thriller movie fan 💜")
                    .padding()
                Spacer()
                
                List {
                    Section("Favorite movie types") {
                        Text("Drama, Thriller")
                    }
                    Section("Favorite movies") {
                        Text("Schindler's List, One Flew Over the Cuckoo's Nest, Pulp FictionPsycho, Dial M for Murder, In The Mood For Love")
                            .fontWeight(.regular)
                    }
                    
                }.navigationBarTitle(Text("Profile"), displayMode: .inline)
                    .listStyle(.sidebar)
                
            }.accentColor(.purple)
        }
    }
    
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
