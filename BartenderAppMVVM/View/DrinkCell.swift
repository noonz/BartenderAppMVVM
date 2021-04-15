//
//  DrinkCell.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI
//for converting and downloading image urls
import Kingfisher

struct DrinkCell: View {
    let drinksDetails: DrinkDetails
    @State private var isActive = false
    
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
                
                KFImage(URL(string: drinksDetails.thumbUrl))
                    .resizable()
                    .scaledToFit()
                    .frame(width:96,height: 96).padding(.vertical, 6)
                
                Text(drinksDetails.category)
                    .frame(width: 180, height: 30, alignment: .top)
                    .font(.body)
                    .padding([.leading,.trailing], 1)
                    .foregroundColor(.white)
            }
        }
        .background(Color.black)
        
        //handle cell clicks
        .onTapGesture {
            self.isActive = true
        }
        .background(NavigationLink(
                        destination: DrinkDetailsView(drinkDetails: drinksDetails), isActive: $isActive,
                        label: {
                            EmptyView()
                        }))
        .cornerRadius(16)
        .shadow(color: .black, radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}
