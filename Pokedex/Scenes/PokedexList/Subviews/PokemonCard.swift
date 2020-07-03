//
//  PokemonCard.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 28/06/20.
//

import SwiftUI

struct PokemonCard: View {
    var pokemon: Pokemon
    
    
    var body: some View {
        ZStack {
            
            // MARK: - Pokemon Detail
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(pokemon.name)
                        .font(.custom("CircularStd-Bold", size: 14))
                    
                    VStack(alignment: .leading, spacing: 6) {
                        ForEach(pokemon.type, id: \.self) { type in
                            Text(String(describing: type))
                                .font(.custom("CircularStd-Bold", size: 8))
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .background(Color(.white).opacity(0.4))
                                .cornerRadius(38)
                        }
                    }
                }
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.vertical, 24)
            
            // MARK: - Pokemon Background
            
            VStack {
                HStack {
                    Spacer()
                    Text("#\(pokemon.number)")
                        .padding(.top, 10)
                        .padding(.trailing, 25)
                        .foregroundColor(Color(.black).opacity(0.1))
                        .font(.custom("CircularStd-Bold", size: 14))
                }
                Spacer()
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image("PokemonSubtract")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 90)
                        .offset(x: 4, y: 0)
                }
            }.padding(.top, 25)
            
            // MARK: - Pokemon Image
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(pokemon.image)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 90)
                }
            }
            .padding(.top, 25)
            
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(height: 111)
        .background(pokemon.color)
        .foregroundColor(.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PokemonCard(pokemon: testPokemons[0])
                .previewLayout(.sizeThatFits)
                .frame(width: 180)
                .padding(.all)
            PokemonCard(pokemon: testPokemons[8])
                .previewLayout(.sizeThatFits)
                .frame(width: 180)
                .padding(.all)
        }
    }
}
