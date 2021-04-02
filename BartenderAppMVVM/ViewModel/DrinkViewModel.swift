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
 
    let baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=w"
    //TODO: Build enum cases for api calls and set proper baseUrl
    
    //decodable
    init() {
        fetchDrinks()
    }
        
    //decodable
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
                    //
                    self.results = result.drinks
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}

    //codeable
//    init() {
//        fetchDrinks{ (result) in
//            for drink in result!.drinks {
//                self.results.append(drink)
//            }
//        }
//    }
    //codable
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
//}
