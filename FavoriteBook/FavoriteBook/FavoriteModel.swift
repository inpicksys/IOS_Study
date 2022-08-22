//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Misha Strutinsky on 13.08.2022.
//

import Foundation
import SwiftUI

struct FavoriteModel: Identifiable {
    var id = UUID()
    var title : String
    var elements: [FavoriteElements]
}

struct FavoriteElements: Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

//Bands
let pinkfloyd = FavoriteElements(name: "Pink Floyd", imageName: "pinkfloyd", description: "Pink Floyd - greatest band of the world")
let beatles = FavoriteElements(name: "The Beatles", imageName: "beatles", description: "Most Famous band ever")
let kino = FavoriteElements(name: "Kino", imageName: "kino", description: "Viktor Zcoy alive forever")

//Movies
let pulpfiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie from Tarantino")
let thedarkknight = FavoriteElements(name: "The Dark Knight", imageName: "darkknight", description: "Movie from Nolan")
let titanic = FavoriteElements(name: "Titanic", imageName: "titanic", description: "Most expensive movie about ship")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [pinkfloyd, beatles, kino])
let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction, thedarkknight, titanic])

let myFavorites = [favoriteBands, favoriteMovies]

