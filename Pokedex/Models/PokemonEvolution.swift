//
//  PokemonEvolution.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 1/07/20.
//

import Foundation

struct PokemonEvolution {
    var normalEvolution: [EvolutionChain]
    var megaEvolution: EvolutionChain
}

struct EvolutionChain: Identifiable {
    var id: UUID = .init()
    var from: String
    var to: String
    var atLevel: Int
}


let testEvolution: PokemonEvolution = .init(
    normalEvolution: [
        .init(from: "Bulbasaur", to: "Ivysaur", atLevel: 16),
        .init(from: "Ivysaur", to: "Venusaur", atLevel: 34)
    ],
    megaEvolution: .init(from: "Venusaur", to: "Mega Venusaur", atLevel: 99)
)
