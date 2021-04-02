//
//  Drink.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import Foundation

struct Drinks: Decodable {
    let drinks: [DrinkDetails]
}

struct DrinkDetails: Decodable, Identifiable {
    let id: String
    let name: String
    let category: String
    let thumbUrl: String

    enum CodingKeys: String, CodingKey {
        case id = "idDrink"
        case name = "strDrink"
        case category = "strCategory"
        case thumbUrl = "strDrinkThumb"
    }
}

//struct Drinks: Codable {
//    let drinks: [DrinkDetails]
//}
//
//struct DrinkDetails: Codable {
//    let id: String
//    let name: String
//    let category: String
//    let thumbUrl: String
//
//    enum CodingKeys: String, CodingKey {
//        case id = "idDrink"
//        case name = "strDrink"
//        case category = "strCategory"
//        case thumbUrl = "strDrinkThumb"
//    }
//}

let TEST_DRINKS: [DrinkDetails] = [
    .init(id: "0", name: "Whiskey", category: "Random text", thumbUrl: "cocktail")
]
