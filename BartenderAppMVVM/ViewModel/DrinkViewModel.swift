//
//  DrinkViewModel.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

class DrinkViewModel: ObservableObject {
    @Published var results = [DrinkDetails]()
    var drinks: Drinks?
 
    let baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
    
    //decodable
    init() {
        fetchDrinks()
    }
        
    //decodable
    func fetchDrinks() {
        guard let url = URL(string: baseUrl) else { return }

        //request data
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Failed to fetch data with error: ", error.localizedDescription)
                return
            }
            guard let data = data else { return }
            do {
                let result = try JSONDecoder().decode(Drinks.self, from: data)
                DispatchQueue.main.async {
                    self.results = result.drinks
                }
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func formatIngredients(ingredients: [String?],
                           measurements: [String?]) -> [String]{
        
        var ingredientString = [String]()
        
        var i = 0
        while (i != 9){
            if (ingredients[i] != nil && measurements[0] != nil){
                ingredientString.append("\(String(describing: ingredients[0])) - \(String(describing: measurements[0]))")
            } else if (ingredients[i] != nil) {
                ingredientString.append("\(String(describing: ingredients[0]))")
            }
            i+=1
        }
        return ingredientString
    }
}
