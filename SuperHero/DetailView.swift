//
//  DetailView.swift
//  SuperHero
//
//  Created by ahmet karadağ on 10.10.2024.
//

import SwiftUI

struct DetailView: View {
    var chosenHero : SuperheroModel
    var body: some View {
        VStack{
            MapView(coordinate: chosenHero.cordinateLocation)
                .frame(height: UIScreen.main.bounds.height * 0.4 )
                .edgesIgnoringSafeArea(.top)
            SpecialImageView(image: Image(chosenHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.8,height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.26)
                .padding(.bottom,-55)
            
            VStack{
                HStack{
                    Text(chosenHero.name)
                        .font(.largeTitle)
                        .foregroundStyle(.green)
                    Spacer()
                    Text(chosenHero.realName)
                        .font(.largeTitle)
                        .foregroundStyle(.red)
                }
                HStack {
                    Text(chosenHero.city).bold()
                    Spacer()
                    Text(chosenHero.job)
                }
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.24)
            Spacer()
        }
    }
}

#Preview {
    DetailView(chosenHero: spiderman)
}
