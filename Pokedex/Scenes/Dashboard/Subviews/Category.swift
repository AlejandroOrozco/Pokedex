//
//  Category.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 27/06/20.
//

import SwiftUI

struct Category: View {
    var pokemonCategory: PokemonCategory
    
    var body: some View {
        ZStack {
            HStack {
                Text(pokemonCategory.name)
                    .font(.custom("CircularStd-Bold", size: 14))
                    .padding(.leading, 18)
                    .padding(.vertical, 21)
                Spacer()
            }
            
            HStack {
                Spacer()
                Image("SubtractSmall")
            }
        }
        .background(pokemonCategory.color)
        .foregroundColor(.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Category(pokemonCategory: .init(name: "Pokedex", color: Color("PokeGreen")))
                .previewLayout(PreviewLayout.sizeThatFits)
                .frame(width: 155)
                .padding(.all, 10)
            Category(pokemonCategory: .init(name: "Pokedex", color: Color("PokeGreen")))
                .preferredColorScheme(.dark)
                .previewLayout(PreviewLayout.sizeThatFits)
                .frame(width: 155)
                .padding(.all, 10)
        }
    }
}
