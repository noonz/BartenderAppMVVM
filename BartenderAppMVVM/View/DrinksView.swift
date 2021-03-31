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
    
    // configure our drinks list view
    var body: some View {
        NavigationView {
            ScrollView {
                // works like recycler view, loads whats necessary
                LazyVGrid(columns: gridItems, spacing: 20 ) {
                    // load first 24 results
                    ForEach(0..<24) { _ in
                        DrinkCell(drink: TEST_DRINKS[0])
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
