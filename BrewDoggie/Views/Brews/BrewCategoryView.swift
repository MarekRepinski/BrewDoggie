//
//  BrewCategoryView.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-02-02.
//

import SwiftUI

struct BrewCategoryView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                Image("BrewPic")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()

                ForEach(modelData.catagoryNames, id: \.self) {name in
                    if let items = modelData.brewCategories[name] {
                        CategoryBrewRow(categoryName: name, items: items)
                        .listRowInsets(EdgeInsets())
                    }
                }
                
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Brews:")
        }
    }
}

struct CategoryBrewRow: View {
    var categoryName: String
    var items: [Brew]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items){ brew in
                        NavigationLink(destination: BrewDetail(brew: brew)) {
                            CategoryBrewItem(brew: brew)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryBrewItem: View {
    var brew: Brew
    
    var body: some View {
        VStack(alignment: .leading){
            brew.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(brew.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct BrewCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        BrewCategoryView()
            .environmentObject(ModelData())
    }
}
