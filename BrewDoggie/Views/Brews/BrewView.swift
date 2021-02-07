//
//  BrewView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-02-02.
//

import SwiftUI

struct BrewView: View {
    @State private var selection: Tab = .category
    
    enum Tab {
        case category
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            BrewCategoryView()
                .tabItem {
                    Label("Category", systemImage: "folder")
                }
                .tag(Tab.category)
            
            BrewList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}
struct BrewView_Previews: PreviewProvider {
    static private var modelData = ModelData()
    
    static var previews: some View {
        BrewView()
            .environmentObject(modelData)
    }
}
