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
    let isAlcoholic: String
    
    let ingredient1: String?
    let ingredient2: String?
    let ingredient3: String?
    let ingredient4: String?
    let ingredient5: String?
    let ingredient6: String?
    let ingredient7: String?
    let ingredient8: String?
    let ingredient9: String?
    let ingredient10: String?
    
    let measurement1: String?
    let measurement2: String?
    let measurement3: String?
    let measurement4: String?
    let measurement5: String?
    let measurement6: String?
    let measurement7: String?
    let measurement8: String?
    let measurement9: String?
    let measurement10: String?
    
    let instructions: String?
    
    // create a new list for each set of ingredients and measurements
    var ingredients: [String?] {
        [ingredient1,
         ingredient2,
         ingredient3,
         ingredient4,
         ingredient5,
         ingredient6,
         ingredient7,
         ingredient8,
         ingredient9,
         ingredient10]
    }
    
    var measurements: [String?] {
        [measurement1,
         measurement2,
         measurement3,
         measurement4,
         measurement5,
         measurement6,
         measurement7,
         measurement8,
         measurement9,
         measurement10
        ]
    }
    
    var ingredientsMeasurements: [String] {
        formatIngredients(ingredients: ingredients, measurements: measurements)
    }

    enum CodingKeys: String, CodingKey {
        case id = "idDrink"
        case name = "strDrink"
        case category = "strCategory"
        case thumbUrl = "strDrinkThumb"
        case isAlcoholic = "strAlcoholic"
        
        case ingredient1 = "strIngredient1"
        case ingredient2 = "strIngredient2"
        case ingredient3 = "strIngredient3"
        case ingredient4 = "strIngredient4"
        case ingredient5 = "strIngredient5"
        case ingredient6 = "strIngredient6"
        case ingredient7 = "strIngredient7"
        case ingredient8 = "strIngredient8"
        case ingredient9 = "strIngredient9"
        case ingredient10 = "strIngredient10"
        
        case measurement1 = "strMeasure1"
        case measurement2 = "strMeasure2"
        case measurement3 = "strMeasure3"
        case measurement4 = "strMeasure4"
        case measurement5 = "strMeasure5"
        case measurement6 = "strMeasure6"
        case measurement7 = "strMeasure7"
        case measurement8 = "strMeasure8"
        case measurement9 = "strMeasure9"
        case measurement10 = "strMeasure10"
        
        case instructions = "strInstructions"
    }
    
    // helper function to create a list of ingredients/measurements
    func formatIngredients(ingredients: [String?],
                           measurements: [String?]) -> [String]{

        var ingredientList = [String]()

        var i = 0
        
        while (i != 9){
            if (ingredients[i] != nil && measurements[i] != nil){
                ingredientList.append("\(measurements[i] ?? "") \(ingredients[i] ?? "")")
            } else if (ingredients[i] != nil) {
                ingredientList.append("\(ingredients[i] ?? "")")
            }
            i+=1
        }
        return ingredientList
    }
}
