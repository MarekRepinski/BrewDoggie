//
//  ContentView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RecipeList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
