//
//  DrinkViewModel.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

class DrinkViewModel: ObservableObject {
    @Published var cocktail = [DrinkDetails]()
    var drinks: Drinks?
    var results: [DrinkDetails] = []
    
//    let baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
    let baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=w"
    
//    init() {
//        fetchDrinks{ (result) in
//            for drink in result!.drinks {
//                self.results.append(drink)
//            }
//        }
//    }
    
    //decodable
    init() {
        fetchDrinks()
    }
    
//    // TEST
//    func fetchDrinks() {
//        guard let url = URL(string: baseUrl) else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                print("Failed to fetch data with error: ", error.localizedDescription)
//                return
//            }
//            guard let data = data else { return }
//            guard let cocktail = try? JSONDecoder().decode(Drinks.self, from: data) else { return }
//
//            DispatchQueue.main.async {
//                self.drinks = cocktail
//            }
//
//        }.resume()
        
    // decodable
    func fetchDrinks() {
        guard let url = URL(string: baseUrl) else { return }

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
                    self.cocktail = result.drinks
//                    print(result.drinks)

//                    print("results and drinks")
//                    print(self.results)
//                    print(self.drinks)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
    
    // codable
//    func fetchDrinks(completion: @escaping (Drinks?) -> Void ) {
//        guard let url = URL(string: baseUrl) else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                print("Failed to fetch data with error: ", error.localizedDescription)
//                return
//            }
//            guard let data = data else { return }
//            do {
//                self.drinks = try JSONDecoder().decode(Drinks.self, from: data)
//                DispatchQueue.main.async {
//                    completion(self.drinks)
//                }
//            } catch {
//                print(error)
//            }
//        }.resume()
//    }
}
