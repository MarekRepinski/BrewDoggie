//
//  ContentView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        RecipeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static private var modelData = ModelData()
    static var previews: some View {
        ContentView()
            .environmentObject(modelData)
    }
}
