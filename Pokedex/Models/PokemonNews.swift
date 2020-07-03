//
//  PokemonNews.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 27/06/20.
//

import Foundation

struct PokemonNews: Identifiable {
    var id: UUID = .init()
    var title: String
    var date: String
    var image: String
}

let testNews: [PokemonNews] = [
    .init(title: "Pokémon Rumble Rush Arrives Soon", date: "15 May 2020", image: "News1"),
    .init(title: "Detective Pikachu Sleuths into Pokémon GO", date: "14 May 2020", image: "News2"),
    .init(title: "Pokémon Rumble Rush Arrives Soon", date: "15 May 2020", image: "News1"),
    .init(title: "Detective Pikachu Sleuths into Pokémon GO", date: "14 May 2020", image: "News2")
]
