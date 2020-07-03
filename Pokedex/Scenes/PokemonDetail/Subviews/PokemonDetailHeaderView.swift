//
//  PokemonDetailHeaderView.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 28/06/20.
//

import SwiftUI

struct PokemonDetailHeaderView: View {
    var pokemon: Pokemon
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(pokemon.name)
                    .font(.custom("CircularStd-Bold", size: 36))
                
                HStack(spacing: 6) {
                    ForEach(pokemon.type, id: \.self) { type in
                        Text(String(describing: type))
                            .font(.custom("CircularStd-Bold", size: 12))
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .background(Color(.white).opacity(0.4))
                            .cornerRadius(38)
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 10) {
                Text("#\(pokemon.number)")
                    .font(.custom("CircularStd-Bold", size: 18))
                    .padding(.vertical, 10)
                Text("Seed pokemon")
                    .font(.custom("CircularStd-Bold", size: 14))
            }
        }
        .foregroundColor(.white)
    }
}

struct PokemonDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailHeaderView(pokemon: testPokemons[0])
            .background(Color("PokeGreen"))
            .padding(.all)
            .previewLayout(.sizeThatFits)
    }
}
