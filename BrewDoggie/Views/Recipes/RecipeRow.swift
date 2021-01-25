//
//  RecipeRow.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-25.
//

import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            recipe.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text("\(recipe.recipeType.rawValue) - \(recipe.name)")
            
            Spacer()
            
            if recipe.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var recipies = ModelData().recipies
    
    static var previews: some View {
        Group {
            RecipeRow(recipe: recipies[0])
            RecipeRow(recipe: recipies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
