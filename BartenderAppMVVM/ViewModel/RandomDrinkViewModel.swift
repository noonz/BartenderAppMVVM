//
//  DrinkViewModel.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-04-19.
//

import SwiftUI

class RandomDrinkViewModel: ObservableObject {
    @Published var result = [DrinkDetails]()
    var drinks: Drinks?
 
    let baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
    
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
                    self.result = result.drinks
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
