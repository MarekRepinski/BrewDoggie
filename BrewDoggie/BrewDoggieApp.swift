//
//  BrewDoggieApp.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-23.
//

import SwiftUI

@main
struct BrewDoggieApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
