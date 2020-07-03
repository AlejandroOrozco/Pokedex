//
//  News.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 27/06/20.
//

import SwiftUI

struct News: View {
    var pokemonNews: PokemonNews
    
    var body: some View {
        HStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 6) {
                Text(pokemonNews.title)
                    .font(.custom("CircularStd-Bold", size: 14))
                Text(pokemonNews.date)
                    .font(.custom("CircularStd-Bold", size: 10))
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Spacer()
                Image(pokemonNews.image)
            }
        }
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            News(pokemonNews: testNews[0])
                .previewLayout(.sizeThatFits)
                .padding(.all, 10)
            News(pokemonNews: testNews[1])
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding(.all, 10)
        }
    }
}
