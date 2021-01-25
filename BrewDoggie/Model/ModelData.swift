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
            isFavorite: true,
            recipeType: .wine,
            imageName: "AppleWineRecipe2x",
            items: [
                RecipeItem(item: "Apples", amount: "6", measurement: "kg"),
                RecipeItem(item: "Rowan berries", amount: "0,5", measurement: "kg"),
                RecipeItem(item: "Water", amount: "8", measurement: "liters"),
                RecipeItem(item: "Sugar", amount: "2,8", measurement: "kg"),
                RecipeItem(item: "Campden powder", amount: "1", measurement: "g"),
                RecipeItem(item: "B-vitamin", amount: "6", measurement: "mg"),
                RecipeItem(item: "Yeast nutrient", amount: "3", measurement: "g"),
                RecipeItem(item: "Wine yeast", amount: "-", measurement: "see instructions")]
            )
        )
        recipies.append(Recipe(
            name: "Easy IPA",
            instructions: "Heat 6 liters of water in a large saucepan to 77 degrees. Crush whole malt if you bought it. Then brush into a bowl gradually. Weigh crushed malt and place in the fermenter. Mashing in: pour on 77 degrees water and stir. Beat in the entire fermenter, even the bottom, in a blanket or blanket and let stand for a total of 90 minutes. Boil water in a kettle or saucepan. Check the temperature which should be 67 degrees every quarter with a thermometer, of course the temperature drops gradually and then you add boiling water and stir and measure the temperature again so that you always have as close to 67 degrees as you can. Then the enzymes in the malt break down the sugar so that it can later ferment to alcohol. Mashing out: in order for the enzymes to stop working, you take out a third of the mash and boil it. Then add to the rest of the mash - then the temperature is raised to about 75-80 degrees. Stir and let stand for 15 minutes. Heat and saucepan with about 3 liters of water to 75-80 degrees on the stove. Prepare to strain the mash. Put a silk in a yeast barrel on a chair. Prepare another yeast barrel next to it with a siphon or hose in between. Take a small saucepan or scoop and catch as much malt as you can and pour in the sieve so that it forms like a filter bed. Continue pouring over the mash and strain it through the sieve. Suck in the siphon so that you get suction in the other fermenter next to it. When you have about 3.5 liters of strained mash (which is now called sweet wort), take it and pour it into a saucepan and heat it to 75-80 degrees. Pour it through the sieve again. In this way, you leach all the sugar out of the malt and the wort becomes shinier (and thus the beer less cloudy). Leach the last sugar from the malt in the silk with about 2-3 liters of extra water that keeps 75-80 degrees. Time to boil the wort with hops: Pour and boil the sweet wort in a large saucepan of about 15-20 liters.  Weigh hops. Calculate how the beers will be (its IBU), ie the amount of hops you will add, according to the formula and the hops' alpha acid (which varies and is stated on the package). The number of IBUs is 3 times below centigrams of alpha acid per liter of wort. The wort should boil for an hour in total. Hops that are put in at the beginning give the most bitterness. Here, hops have been added in three rounds. Add the first batch of Amarillo hops, stir and cook for 40 minutes. Add the second round of East Kent Golding and stir. Cook for another 17 minutes. Add the last batch of hops of Cascade and cook for another 3 minutes. Remove from the heat and strain into a fermenter through a colander. Put the lid on. Allow to cool to room temperature. The wort may stand overnight. Stir in the yeast and ferment with a water trap at room temperature for 10 days. Carefully drop into another fermenter. Boil 3 g of sugar per liter of fermented beer (30 grams to 10 liters) together with a few dl of water (this is so that the sugar dissolves evenly in the beer). Stir in the sugar mixture into the beer. The sugar is added so that it continues to ferment in the bottle and some carbon dioxide is formed. Pour the beer into bottles and put on a cap. Store the beer at room temperature for another 10 days. Cool your IPA before serving.",
            recipeType: .beer,
            imageName: "easyipa",
            items: [
                RecipeItem(item: "Malt: Aromatic", amount: "200", measurement: "g"),
                RecipeItem(item: "Malt: Dark Candy", amount: "200", measurement: "g"),
                RecipeItem(item: "Malt: Pale Malt", amount: "2", measurement: "kg"),
                RecipeItem(item: "Water", amount: "10", measurement: "liters"),
                RecipeItem(item: "Alpha acid: Amarillo", amount: "8", measurement: "g"),
                RecipeItem(item: "Alpha acid: East Kent", amount: "20", measurement: "g"),
                RecipeItem(item: "Alpha acid: Cascade", amount: "100", measurement: "g"),
                RecipeItem(item: "Liquid yeast", amount: "1", measurement: "pack")]
            )
        )
    }
}
