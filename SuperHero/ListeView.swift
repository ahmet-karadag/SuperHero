//
//  ContentView.swift
//  SuperHero
//
//  Created by ahmet karadağ on 9.10.2024.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superheroArray){ superHero in
                NavigationLink(destination: DetailView(chosenHero: superHero), label: {
                    ListRowView(superhero: superHero)
                })
            }.navigationTitle("Super heros")
        }
    }
}

#Preview {
    ListeView()
}
