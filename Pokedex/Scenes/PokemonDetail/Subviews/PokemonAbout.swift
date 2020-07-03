//
//  PokemonAbout.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 29/06/20.
//

import SwiftUI

struct PokemonAbout: View {
    let pokemonInfo: PokemonInformation
    var body: some View {
        VStack(alignment: .leading, spacing: 28) {
            
            // MARK: - Information
            
            Text(pokemonInfo.information)
                .font(.custom("CircularStd-Book", size: 14))
                .foregroundColor(Color("AlmostBlack"))
                .lineSpacing(6)
            
            // MARK: - Height & Weight
            
            VStack(spacing: 10) {
                HStack {
                    Text("Height")
                    Spacer()
                    Text("Weight")
                    Spacer()
                }
                .font(.custom("CircularStd-Book", size: 14))
                .foregroundColor(.gray)
                
                HStack {
                    Text(pokemonInfo.height)
                    Spacer()
                    Text(pokemonInfo.weight)
                    Spacer()
                }
                .font(.custom("CircularStd-Book", size: 14))
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.18), radius: 10, y: 8)
            
            // MARK: - Breeding
            
            Text("Breeding")
                .font(.custom("CircularStd-Bold", size: 16))
            
            HStack(alignment: .top, spacing: 13) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Gender")
                    Text("Egg Groups")
                    Text("Egg Cycle")
                }
                .font(.custom("CircularStd-Book", size: 14))
                .foregroundColor(.gray)
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image("Male")
                        Text(pokemonInfo.male)
                    }
                    Text(pokemonInfo.eggGroup)
                    Text(pokemonInfo.eggCycle)
                }
                .font(.custom("CircularStd-Book", size: 14))
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image("Female")
                        Text(pokemonInfo.female)
                    }
                }
                .font(.custom("CircularStd-Book", size: 14))
            }
            
            // MARK: - Location
            
            Text("Location")
                .font(.custom("CircularStd-Bold", size: 16))
            
            Image("Map")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // MARK: - Location
            
            Text("Training")
                .font(.custom("CircularStd-Bold", size: 16))
            
            HStack {
                Text("Base Exp")
                    .foregroundColor(.gray)
                Text(pokemonInfo.experience)
            }
            .font(.custom("CircularStd-Book", size: 14))
        }
    }
}

struct PokemonAbout_Previews: PreviewProvider {
    static var previews: some View {
        PokemonAbout(pokemonInfo: testPokemonInfo)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
