//
//  RecipeCategoryView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-28.
//

import SwiftUI

struct RecipeCategoryView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                Image("RecipePic")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()

                ForEach(modelData.catagoryNames, id: \.self) {name in
                    CategoryRow(categoryName: name, items: modelData.recipeCategories[name]!)
                    .listRowInsets(EdgeInsets())
                }
                
//                ForEach(modelData.recipeCategories.keys.sorted(), id: \.self) { key in
//                    CategoryRow(categoryName: key, items: modelData.recipeCategories[key]!)
//                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Recipies:")
        }
    }
}

struct CategoryRow: View {
    var categoryName: String
    var items: [Recipe]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items){ recipe in
                        NavigationLink(destination: RecipeDetail(recipe: recipe)) {
                            CategoryItem(recipe: recipe)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading){
            recipe.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(recipe.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct RecipeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryView()
            .environmentObject(ModelData())
    }
}
