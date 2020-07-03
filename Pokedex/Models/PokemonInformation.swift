//
//  PokemonAbout.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 29/06/20.
//

import Foundation

struct PokemonInformation {
    var information: String
    var height: String
    var weight: String
    var male: String
    var female: String
    var eggGroup: String
    var eggCycle: String
    var experience: String
}

let testPokemonInfo: PokemonInformation = .init(
    information: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.",
    height: "2’3.6” (0.70 cm)",
    weight: "15.2 lbs (6.9 kg)",
    male: "87.5%",
    female: "12.5%",
    eggGroup: "Monster",
    eggCycle: "Grass",
    experience: "64"
)
