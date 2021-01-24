//
//  ModelData.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-23.
//

import Foundation

class ModelData: ObservableObject {
    @Published var recipies = [Recipe]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        recipies.append(Recipe(
            name: "Apple wine",
            instructions: "Dice apples, with peel and core, mix with rowanberries in a wine damejeanne or ice bucket. Add lukewarm water (ideal temperature 25-30 degrees), vitamin B, yeast nutrient and yeast. Stir and let stand for 3 days. Strain off the fruit remains. Mix in the sugar and stir until dissolved. Adjust to 10 liters volume with lukewarm water and let the wine ferment for a few more days. The sugar content must have dropped significantly. Taste it too. Redraw it to a new vessel without the bottom set. After a few days, you can finish the fermentation with a little Campden powder to be sure that it does not continue to ferment after bottling.",
            recipeType: .wine,
            items: [
                RecipeItem(item: "Apples", amount: "6", measurement: "kg"),
                RecipeItem(item: "Rowan berries", amount: "0,5", measurement: "kg"),
                RecipeItem(item: "Water", amount: "8", measurement: "liters"),
                RecipeItem(item: "Sugar", amount: "2,8", measurement: "kg"),
                RecipeItem(item: "Campden powder", amount: "1", measurement: "g"),
                RecipeItem(item: "B-vitamin", amount: "6", measurement: "mg"),
                RecipeItem(item: "Yeast nutrient", amount: "3", measurement: "g"),
                RecipeItem(item: "Wine yeast", amount: "-", measurement: "see instructions")
            ])
        )
    }
}
