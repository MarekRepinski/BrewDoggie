//
//  BrewList.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-02-02.
//

import SwiftUI

struct BrewList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showOngoingOnly = false
    
    var filteredBrews: [Brew] {
        modelData.brews.filter { r in
            (!showOngoingOnly || r.isOnGoing)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showOngoingOnly) {
                    Text("Ongoing only")
                }
                ForEach(filteredBrews) { brew in
                    NavigationLink(destination: BrewDetail(brew: brew)) {
                        BrewRow(brew: brew)
                    }
                }
            }
            .navigationTitle("Brews:")
        }
    }
}

struct BrewRow: View {
    var brew: Brew
    
    var body: some View {
        HStack {
            brew.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text("\(brew.brewType.rawValue) - \(brew.name)")
            
            Spacer()
        }
    }
}

struct BrewList_Previews: PreviewProvider {
    static var previews: some View {
        BrewList()
            .environmentObject(ModelData())
    }
}
