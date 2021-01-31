//
//  ContentView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(.white)
            
            NavigationView {
                VStack(alignment: .center, spacing: 30) {
                    Image("LTd5gaBKcTextTrans")
                        .resizable()
                        .frame(width: 225, height: 375, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                
                    Spacer()
                    
                    NavigationLink(destination: RecipeView()) {
                        Text("Recipies")
                            .font(.title)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    }
                    NavigationLink(destination: RecipeView()) {
                        Text("Whats Cookin'")
                            .font(.title)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    }
                    NavigationLink(destination: RecipeView()) {
                        Text("Wine cellar")
                            .font(.title)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    }
                    NavigationLink(destination: RecipeView()) {
                        Text("Scan QR code")
                            .font(.title)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    }

                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static private var modelData = ModelData()
    static var previews: some View {
        ContentView()
            .environmentObject(modelData)
    }
}
