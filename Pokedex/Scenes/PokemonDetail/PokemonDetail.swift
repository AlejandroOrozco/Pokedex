//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 28/06/20.
//

import SwiftUI

struct PokemonDetail: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var pokemon: Pokemon

    @State private var selectedTab: TabOptions = .About
    
    private enum TabOptions: Int {
        case About, BaseStats, Evolution
    }
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
            HStack {
                Image("back")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
            }
        }
    }
    
    var btnLike : some View { Button(action: {}) {
            HStack {
                Image(systemName: "heart")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
            }
        }
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                pokemon.color
                
                VStack {
                    HStack {
                        Image("Ornament")
                        Spacer()
                    }
                    Spacer()
                }
                
                VStack {
                    HStack {
                        Spacer()
                        Image("Dots")
                            .padding(.trailing, 70)
                    }
                    Spacer()
                }
                
                ScrollView {
                    
                    // MARK: - Header
                    
                    HStack {
                        PokemonDetailHeaderView(pokemon: pokemon)
                    }
                    .padding(.horizontal, 26)
                    .padding(.top, 100)
                    
                    
                    ZStack {
                        
                        HStack {
                            Spacer()
                            Image("SubtractFull")
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                            Spacer()
                        }
                        
                        Image(pokemon.image)
                            .renderingMode(.original)
                            .resizable()
                            .frame(maxHeight: 223, alignment: .center)
                            .aspectRatio(contentMode: .fit)
                            
                    }
                    .zIndex(1)
                    .offset(y: 60)
                    
                    // MARK: - Body
                    
                    ZStack {
                        Color.white
                        
                        VStack(spacing: 26) {
                            // MARK: - Segmented Control
                            Picker(selection: $selectedTab, label: Text("About Options")) {
                                Text("About").tag(TabOptions.About)
                                Text("Base Stats").tag(TabOptions.BaseStats)
                                Text("Evolution").tag(TabOptions.Evolution)
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            
                            switch (selectedTab) {
                            case .About: PokemonAbout(pokemonInfo: testPokemonInfo)
                            case .BaseStats: PokemonBaseStats()
                            case .Evolution: PokemonEvolutionChain(pokemonEvolution: testEvolution)
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 28)
                        .padding(.top, 50)
                    }
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .frame(minHeight: geo.frame(in: .global).midY + 60)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack, trailing: btnLike)

    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PokemonDetail(pokemon: testPokemons[0])
        }
    }
}
