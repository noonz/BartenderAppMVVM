//
//  DrinksView.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

struct DrinksView: View {
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    
    // viewmodel
    @ObservedObject var viewModel = DrinkViewModel()
    
    // configure our drink views
    var body: some View {
        NavigationView {
            ScrollView {
                // works like recycler view, loads whats necessary
                LazyVGrid(columns: gridItems, spacing: 20 ) {
                    // load each drink found in drinksviewmodel
//                    for drink in viewModel.drinks {
//                        DrinkCell(drinksDetails: drink)
//                    }
//                    ForEach(viewModel.drinks) { drink in
//                        DrinkCell(drink: drinks)
//                }
                    
                    // Mock data
                    ForEach(0..<24) { _ in
                        DrinkCell(drinksDetails: TEST_DRINKS[0])
                    }
                }
            }
            .navigationTitle("Bartender")
        }
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}
