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
//    @ObservedObject var randomDrinkViewModel = RandomDrinkViewModel()
    
    // configure our drink views
    var body: some View {
        ZStack{
            Color.green // set view background color green
                .ignoresSafeArea(.all)
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20 ) { // works like recycler view, loads whats necessary
                    ForEach(viewModel.results) { result in  // load drinks into grid itemgrid
                        DrinkCell(drinksDetails: result)
                    }
                }.padding(.top,20)
            }
            
            // set floating menu on bottom right of screen
            HStack{
                Spacer()
                VStack{
                    Spacer()
                    FloatingMenu()
                        .padding()
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

