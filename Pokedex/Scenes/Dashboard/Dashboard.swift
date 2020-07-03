//
//  Dashboard.swift
//  Pokedex
//
//  Created by Alejandro Orozco Builes on 27/06/20.
//

import SwiftUI

struct Dashboard: View {
    @State var search: String = .init()
    var categories: [PokemonCategory] = testCategories
    var news: [PokemonNews] = testNews
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    init() {
        UIScrollView.appearance().bounces = false
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        //        UINavigationBar.appearance().barTintColor = .clear
        //        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: - Background
                Color("SubtileGray").edgesIgnoringSafeArea(.bottom)
                
                // MARK: - Upper Body
                ScrollView {
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
                            
                            VStack(spacing: 40) {
                                Text("What Pokemon are you looking for?")
                                    .font(.custom("CircularStd-Bold", size: 30))
                                    .fixedSize(horizontal: false, vertical: true)
                                
                                HStack {
                                    Image("Search")
                                        .padding(.horizontal, 13)
                                    TextField("Search Pokemon, Move, Ability etc", text: $search)
                                        .font(.custom("CircularStd-Bold", size: 14))
                                }
                                .padding(.all, 10)
                                .background(Color("SubtileGray"))
                                .cornerRadius(100)
                                
                                LazyVGrid(columns: threeColumnGrid, alignment: .center, spacing: 10, pinnedViews: []) {
                                    ForEach(categories) { category in
                                        NavigationLink(destination: PokedexList()) {
                                            Category(pokemonCategory: category)
                                        }
                                    }
                                }
                                
                                
                            }
                            .padding(.horizontal, 26)
                            .padding(.top, 100)
                            .padding(.bottom, 58)
                        }
                        .edgesIgnoringSafeArea(.all)
                        .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                        
                        VStack {
                            
                            HStack {
                                Text("Pokémon News")
                                    .font(.custom("CircularStd-Bold", size: 20))
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("View All")
                                })
                            }
                            
                            
                            VStack {
                                ForEach(news) { new in
                                    News(pokemonNews: new)
                                }
                            }
                            
                        }
                        .padding(28)
                    }
                }.edgesIgnoringSafeArea(.all)
            }.navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
