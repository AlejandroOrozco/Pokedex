//
//  Pokemon.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 28/06/20.
//

import SwiftUI

struct Pokemon: Identifiable {
    var id: UUID = .init()
    var number: String
    var name: String
    var type: [PokemonType]
    var image: String
    
    var color: Color {
        switch (type.first ?? .Grass) {
        case .Grass: return Color("PokeGreen")
        case .Poison: return Color("PokePurple")
        case .Fire: return Color("PokeRed")
        case .Flying: return Color("SlightGray")
        case .Water: return Color("PokeBlue")
        case .Eletric: return Color("PokeYellow")
        }
    }
}


enum PokemonType: Comparable {
    case Grass, Poison, Fire, Flying, Water, Eletric
}

let testPokemons: [Pokemon] = [
    .init(number: "001", name: "Bulbasaur", type: [.Grass, .Poison], image: "Bulbasaur"),
    .init(number: "002", name: "Ivysaur", type: [.Grass, .Poison], image: "Ivysaur"),
    .init(number: "003", name: "Venusaur", type: [.Grass, .Poison], image: "Venusaur"),
    .init(number: "004", name: "Charmander", type: [.Fire], image: "Charmander"),
    .init(number: "005", name: "Charmeleon", type: [.Fire], image: "Charmeleon"),
    .init(number: "006", name: "Charizard", type: [.Fire, .Flying], image: "Charizard"),
    .init(number: "007", name: "Squirtle", type: [.Water], image: "Squirtle"),
    .init(number: "008", name: "Wartortle", type: [.Water], image: "Wartortle"),
    .init(number: "009", name: "Blastoise", type: [.Water], image: "Blastoise"),
    .init(number: "010", name: "Pikachu", type: [.Eletric], image: "Pikachu")
]
    
