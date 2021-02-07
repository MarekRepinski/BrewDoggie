//
//  BrewDetail.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-02-02.
//

import SwiftUI

struct BrewDetail: View {
    @EnvironmentObject var modelData: ModelData
    var brew: Brew
    
    var brewIndex: Int {
        modelData.brews.firstIndex(where: { $0.id == brew.id})!
    }
    
    var body: some View {
        ScrollView {
            RecipeImage(image: brew.image)
                .padding(.top, 20)

            HStack {
                VStack(alignment: .leading) {
                    Text("\(brew.brewType.rawValue) - \(brew.name)")
                        .font(.title)
                }
                Spacer()
            }
            .padding(.horizontal, 15)

            Divider()

            Text("Brew:")
                .font(.title2)
                .bold()

//            VStack(alignment: .leading, spacing: 5) {
//                ForEach(recipe.items) {rI in
//                    RecipeItemView(item: rI.item, amount: rI.amount, measure: rI.measurement)
//                }
//            }
//            .padding(.horizontal, 15)
//            .padding(.bottom, 15)
//
//            Divider()
//            
//            Text("Directions:")
//                .font(.title2)
//                .bold()
//            
//            VStack(alignment: .leading) {
//                Text("\(recipe.instructions)")
//                    .fixedSize(horizontal: false, vertical: true)
//            }
//            .padding(.horizontal, 15)
        }
        .navigationTitle(brew.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrewDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        BrewDetail(brew: modelData.brews[1])
            .environmentObject(modelData)
    }
}
