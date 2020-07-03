//
//  PokemonBaseStats.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 29/06/20.
//

import SwiftUI

struct PokemonBaseStats: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("HP")
                    Text("Attack")
                    Text("Defense")
                    Text("Sp. Atk")
                    Text("Sp. Def")
                    Text("Speed")
                    Text("Total")
                }
                
                VStack(alignment: .leading) {
                    Text("45")
                    Text("60")
                    Text("48")
                    Text("48")
                    Text("65")
                    Text("45")
                    Text("317")
                }
                
                VStack(alignment: .leading, spacing: 14) {
                    ProgressView(value: 0.45)
                        .accentColor(.orange)
                    ProgressView(value: 0.6)
                        .accentColor(.green)
                    ProgressView(value: 0.48)
                        .accentColor(.orange)
                    ProgressView(value: 0.48)
                        .accentColor(.green)
                    ProgressView(value: 0.65)
                        .accentColor(.green)
                    ProgressView(value: 0.45)
                        .accentColor(.orange)
                    ProgressView(value: 0.7)
                        .accentColor(.green)
                }
            }.font(.custom("CircularStd-Book", size: 14))
            
            // MARK: - Type Defenses
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Type Defenses")
                    .font(.custom("CircularStd-Bold", size: 16))
                
                Text("The effectiveness of each type on Charmander")
                    .font(.custom("CircularStd-Book", size: 14))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct PokemonBaseStats_Previews: PreviewProvider {
    static var previews: some View {
        PokemonBaseStats()
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
