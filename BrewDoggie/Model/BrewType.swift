//
//  BrewType.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-31.
//

import Foundation

struct BrewType {

    var typeNames: [String] = ["Wine", "Beer", "Mead", "Other"]

    enum BrewTypes: String, CaseIterable, Codable {
        case wine = "Wine"
        case beer = "Beer"
        case mead = "Mead"
        case other = "Other"
    }

}
