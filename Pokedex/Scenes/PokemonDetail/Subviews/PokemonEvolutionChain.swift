//
//  PokemonEvolutionChain.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 1/07/20.
//

import SwiftUI

struct PokemonEvolutionChain: View {
    let pokemonEvolution: PokemonEvolution
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // MARK: - Normal Evolution
            
            Text("Evolution Chain")
                .font(.custom("CircularStd-Bold", size: 16))
            
            ForEach(pokemonEvolution.normalEvolution) { evolution in
                HStack {
                    VStack {
                        ZStack {
                            Image("EvolutionSubstract")
                            Image(evolution.from)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxHeight: 71)
                        }
                        Text(evolution.from)
                            .font(.custom("CircularStd-Book", size: 14))
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image("EvolutionArrow")
                        Text("Lvl \(evolution.atLevel.description)")
                            .font(.custom("CircularStd-Bold", size: 12))
                    }
                    
                    Spacer()
                    
                    VStack {
                        ZStack {
                            Image("EvolutionSubstract")
                            Image(evolution.to)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxHeight: 71)
                        }
                        Text(evolution.to)
                            .font(.custom("CircularStd-Book", size: 14))
                    }
                }
                
                if evolution.id != pokemonEvolution.normalEvolution.last?.id {
                    Divider()
                        .foregroundColor(Color("SlightGray"))
                }
            }
            
            Text("Mega Evolution")
                .font(.custom("CircularStd-Bold", size: 16))
            
            HStack {
                VStack {
                    ZStack {
                        Image("EvolutionSubstract")
                        Image(pokemonEvolution.megaEvolution.from)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxHeight: 71)
                    }
                    Text(pokemonEvolution.megaEvolution.from)
                        .font(.custom("CircularStd-Book", size: 14))
                }
                
                Spacer()
                
                VStack {
                    Image("EvolutionArrow")
                    Text("Mega Stone")
                        .font(.custom("CircularStd-Bold", size: 12))
                }
                
                Spacer()
                
                VStack {
                    ZStack {
                        Image("EvolutionSubstract")
                        Image(pokemonEvolution.megaEvolution.to)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxHeight: 71)
                    }
                    Text(pokemonEvolution.megaEvolution.to)
                        .font(.custom("CircularStd-Book", size: 14))
                }
            }
        }
    }
}

struct PokemonEvolutionChain_Previews: PreviewProvider {
    static var previews: some View {
        PokemonEvolutionChain(pokemonEvolution: testEvolution)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
