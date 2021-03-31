//
//  Drink.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import Foundation

struct Drink: Decodable, Identifiable {
    let id: Int
    let idDrink: String
    let strDrink: String
    let strDrinkThumb: String
    let strCategory: String
}

let TEST_DRINKS: [Drink] = [
    .init(id: 0, strDrink: "Whisky Sour", strDrinkThumb: "cocktail", strCategory: "Oridinary Drink"),
    .init(id: 1, strDrink: "Dirty Martini", strDrinkThumb: "cocktail", strCategory: "Oridinary Drink"),
    .init(id: 2, strDrink: "Old Fashion", strDrinkThumb: "cocktail", strCategory: "Oridinary Drink"),
    .init(id: 3, strDrink: "Margarita", strDrinkThumb: "cocktail", strCategory: "Oridinary Drink"),
    .init(id: 4, strDrink: "Bloody Mary", strDrinkThumb: "cocktail", strCategory: "Oridinary Drink"),
    .init(id: 5, strDrink: "Screwdriver", strDrinkThumb: "cocktail", strCategory: "Oridinary Drink")
]
