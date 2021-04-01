//
//  DrinkCell.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

struct DrinkCell: View {
    let drinksDetails: DrinkDetails
//    var viewModel = DrinkViewModel()
    
    var body: some View {
        
        ZStack {
            VStack{
                Text(drinksDetails.name)
                    .font(.headline).bold()
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25))
                            .padding(.top, 8)
                    )
                    .frame(width: 180, height: 24)
                Image("cocktail")
                    .resizable()
                    .scaledToFit()
                    .frame(width:64,height: 64)
                Text(drinksDetails.category)
                    .frame(width: 180, height: 80, alignment: .top)
                    .font(.body)
                    .padding([.leading,.trailing], 1)
            }
        }
        .background(Color.green)
        .cornerRadius(16)
        .shadow(color: .green, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct DrinkCell_Previews: PreviewProvider {
    static var previews: some View {
        DrinkCell(drinksDetails: TEST_DRINKS[0])
    }
}
