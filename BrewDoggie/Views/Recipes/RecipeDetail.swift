//
//  RecipeDetail.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-24.
//

import SwiftUI

struct RecipeDetail: View {
    @EnvironmentObject var modelData: ModelData
    var recipe: Recipe
    
    var recipeIndex: Int {
        modelData.recipies.firstIndex(where: { $0.id == recipe.id})!
    }
    
    var body: some View {
        ScrollView {
            RecipeImage(image: recipe.image)
                .padding(.top, 20)

            HStack {
                VStack(alignment: .leading) {
                    Text("\(recipe.recipeType.rawValue) - \(recipe.name)")
                        .font(.title)
                }
                Spacer()
                FavoriteButton(isSet: $modelData.recipies[recipeIndex].isFavorite)
            }
            .padding(.horizontal, 15)

            Divider()

            Text("Recipe:")
                .font(.title2)
                .bold()

            VStack(alignment: .leading, spacing: 5) {
                ForEach(recipe.items) {rI in
                    RecipeItemView(item: rI.item, amount: rI.amount, measure: rI.measurement)
                }
            }
            .padding(.horizontal, 15)
            .padding(.bottom, 15)

            Divider()
            
            Text("Directions:")
                .font(.title2)
                .bold()
            
            VStack(alignment: .leading) {
                Text("\(recipe.instructions)")
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, 15)
        }
        .navigationTitle(recipe.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        RecipeDetail(recipe: modelData.recipies[1])
            .environmentObject(modelData)
    }
}

struct RecipeItemView: View {
    var item: String
    var amount: String
    var measure: String
    
    var body: some View {
        HStack {
            Text(item)
            Spacer()
            Text("\(amount) \(measure)")
        }
        .padding(.horizontal, 50)
    }
}
