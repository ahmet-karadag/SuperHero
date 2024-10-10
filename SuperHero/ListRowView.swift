//
//  ListRowView.swift
//  SuperHero
//
//  Created by ahmet karadağ on 10.10.2024.
//

import SwiftUI

struct ListRowView: View {
    var superhero: SuperheroModel
    var body: some View {
        HStack{
            Image(superhero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.4,height: UIScreen.main.bounds.height * 0.1,alignment: .leading)
            
               // .clipShape(Circle())
            Spacer()
            VStack{
                Text(superhero.name)
                    .font(.title)
                    .bold()
                Text(superhero.realName)
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    ListRowView(superhero: spiderman)
}
