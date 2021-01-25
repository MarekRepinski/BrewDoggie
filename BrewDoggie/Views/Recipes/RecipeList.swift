//
//  RecipeList.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-25.
//

import SwiftUI

struct RecipeList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredRecipies: [Recipe] {
        modelData.recipies.filter { r in
            (!showFavoritesOnly || r.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredRecipies) { recipe in
                    NavigationLink(destination: RecipeDetail(recipe: recipe)) {
                        RecipeRow(recipe: recipe)
                    }
                }
            }
            .navigationTitle("Recipies:")
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
            .environmentObject(ModelData())
    }
}
