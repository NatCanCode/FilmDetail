//
//  Movie.swift
//  FilmDetail
//
//  Created by N N on 20/09/2022.
//

import Foundation
// import Foundation = Swift only (not SwiftUI)
enum MovieType: String, CaseIterable {
    case Action
    case SciFi
    case Adventure
    case Drama
}
//enum to activate picker
struct Movie: Identifiable {
    var id = UUID()
//   UUID() assigne un identifiant unique
    let title: String
    let director: String
    let year: Int
    let image: String
    let movieType: MovieType
    let description: String
}
//MODELE en haut, EXTENSION en bas pour ajouter propriétés sur les structures

extension Movie {
//    variable calculée/statique permet de construire la preview
    static var preview: Movie {
        Movie(title: "Les Infiltrés", director: "by Martin Scorcèse", year: 2006, image: "Infiltres", movieType: .Action, description: """
South Boston cop Billy Costigan (Leonardo DiCaprio) goes under cover to infiltrate the organization of gangland chief Frank Costello (Jack Nicholson). As Billy gains the mobster's trust, a career criminal named Colin Sullivan (Matt Damon) infiltrates the police department and reports on its activities to his syndicate bosses. When both organizations learn they have a mole in their midst, Billy and Colin must figure out each other's identities to save their own lives.
""")
    }
//    static var pas nécessiare ici. On peut la sortir d'extension en var classique
    static var all: [Movie] {
        [Movie(title: "Les Infiltrés", director: "by Martin Scorcèse", year: 2006, image: "Infiltres", movieType: .Action, description: """
        South Boston cop Billy Costigan (Leonardo DiCaprio) goes under cover to infiltrate the organization of gangland chief Frank Costello (Jack Nicholson). As Billy gains the mobster's trust, a career criminal named Colin Sullivan (Matt Damon) infiltrates the police department and reports on its activities to his syndicate bosses. When both organizations learn they have a mole in their midst, Billy and Colin must figure out each other's identities to save their own lives.
        """), Movie(title: "Inception", director: "by Christopher Nolan", year: 2010, image: "Inception", movieType: .SciFi, description: """
        Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's every move.
        """), Movie(title: "The Revenant", director: "by Alejandro G. Iñárritu", year: 2015, image: "Revenant", movieType: .Adventure, description: """
        While exploring the uncharted wilderness in 1823, frontiersman Hugh Glass (Leonardo DiCaprio) sustains life-threatening injuries from a brutal bear attack. When a member (Tom Hardy) of his hunting team kills his young son (Forrest Goodluck) and leaves him for dead, Glass must utilize his survival skills to find a way back to civilization. Grief-stricken and fueled by vengeance, the legendary fur trapper treks through the snowy terrain to track down the man who betrayed him.
        """)]
    }
}
