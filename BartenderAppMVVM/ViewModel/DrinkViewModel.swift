//
//  DrinkViewModel.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

class DrinkViewModel: ObservableObject {
    @Published var drink = [Drink]()
    let baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=w"
    
    func fetchDrinks() {
        guard let url = URL(string: baseUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard let drink = try? JSONDecoder().decode([Drink].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.drink = drink
            }
        }.resume()
    }
}
