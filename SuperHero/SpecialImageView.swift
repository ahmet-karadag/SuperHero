//
//  SpecialImageView.swift
//  SuperHero
//
//  Created by ahmet karadağ on 10.10.2024.
//

import SwiftUI

struct SpecialImageView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red,lineWidth: 4)).shadow(radius: 20)
    }
}

#Preview {
    SpecialImageView(image: Image("spiderman"))
}
