//
//  RecipeView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-28.
//

import SwiftUI

struct RecipeView: View {
    @State private var selection: Tab = .category
    
    enum Tab {
        case category
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            RecipeCategoryView()
                .tabItem {
                    Label("Category", systemImage: "folder")
                }
                .tag(Tab.category)
            
            RecipeList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static private var modelData = ModelData()
    
    static var previews: some View {
        RecipeView()
            .environmentObject(modelData)
    }
}
