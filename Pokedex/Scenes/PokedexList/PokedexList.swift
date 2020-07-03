//
//  PokedexList.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 28/06/20.
//

import SwiftUI

struct PokedexList: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var pokemons: [Pokemon] = testPokemons
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
            HStack {
                Image("back")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(.label))
            }
        }
    }
    
    var btnMenu : some View { Button(action: {}) {
            HStack {
                Image("list")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(.label))
            }
        }
    }
    
    var body: some View {
        
        ZStack {
            // MARK: - Background
            Color("SubtileGray").edgesIgnoringSafeArea(.bottom)
            
            // MARK: - Upper Body
            VStack {
                ZStack {
                    Color(.systemBackground)

                    VStack {
                        HStack {
                            Spacer()
                            Image("Subtract")
                        }
                        Spacer()
                    }
                }
            }
            
            ScrollView {
                VStack {
                    HStack {
                        Text("Pokedex")
                            .font(.custom("CircularStd-Bold", size: 30))
                        Spacer()
                    }
                    
                    LazyVGrid(columns: threeColumnGrid, alignment: .center, spacing: 20, pinnedViews: []) {
                        ForEach(pokemons) { pokemon in
                            NavigationLink(destination: PokemonDetail(pokemon: pokemon)) {
                                PokemonCard(pokemon: pokemon)
                            }
                        }
                    }

                }
                .padding(.horizontal, 26)
                .padding(.top, 100)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack, trailing: btnMenu)
    }
}

struct PokedexList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PokedexList()
        }
    }
}
