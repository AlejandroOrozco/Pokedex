//
//  PokemonCategory.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 27/06/20.
//

import SwiftUI

struct PokemonCategory: Identifiable {
    var id: UUID = .init()
    var name: String
    var color: Color
}


let testCategories: [PokemonCategory] = [
    .init(name: "Pokedex", color: Color("PokeGreen")),
    .init(name: "Movies", color: Color("PokeRed")),
    .init(name: "Abilities", color: Color("PokeBlue")),
    .init(name: "Items", color: Color("PokeYellow")),
    .init(name: "Locations", color: Color("PokePurple")),
    .init(name: "Type Charts", color: Color("PokeBrown")),
]
