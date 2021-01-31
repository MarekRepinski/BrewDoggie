//
//  Recipe.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-23.
//

import Foundation
import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var instructions: String
    var isFavorite = false

    var recipeType: BrewType.BrewTypes
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }

    var items = [RecipeItem]()
}

struct RecipeItem: Identifiable {
    var id = UUID()
    var item: String
    var amount: String
    var measurement: String
}
