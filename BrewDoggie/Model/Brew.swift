//
//  Brew.swift
//  BrewDoggie
//
//  Created by Marek Repinski on 2021-01-31.
//

import Foundation
import SwiftUI

struct Brew: Identifiable {
    var id = UUID()
    var name: String
    var startDate: Date
    var finishDate: Date
    var notification = false
    var notificationDate: Date
    var originalGravity: Decimal
    var isOnGoing = false

    var brewType: BrewType
    enum brewType: String, CaseIterable, Codable {
        case wine = "Wine"
        case beer = "Beer"
        case mead = "Mead"
        case other = "Other"
    }

    var imageName: String
    var image: Image {
        Image(imageName)
    }

    var items = [BrewItem]()
}

struct BrewItem: Identifiable {
    var id = UUID()
    var checkDate: Date
    var gravity: Decimal
    var comment: String
}

struct BrewType {
    enum brewType: String, CaseIterable, Codable {
        case wine = "Wine"
        case beer = "Beer"
        case mead = "Mead"
        case other = "Other"
    }
}
