//
//  DrinksView.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

struct DrinkListView: View {
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    
    // viewmodel
    @ObservedObject var viewModel = DrinkViewModel()
    
    // configure our drink views
    var body: some View {
        ZStack{
            
            // set view background color green
            Color.green
                .ignoresSafeArea(.all)
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20 ) {
                    ForEach(viewModel.results) { result in
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
        DrinkListView()
    }
}

