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
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 20 ) { // works like recycler view, loads whats necessary
                ForEach(viewModel.results) { result in  // load drinks into grid itemgrid
                    DrinkCell(drinksDetails: result)
                }
            }
        }
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}

