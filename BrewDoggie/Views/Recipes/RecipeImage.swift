//
//  RecipeImage.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-24.
//

import SwiftUI

struct RecipeImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 15)
            .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeImage_Previews: PreviewProvider {
    static var previews: some View {
        RecipeImage(image: Image("easyipa"))
        RecipeImage(image: Image("AppleWineRecipe2x"))
    }
}
