//
//  DrinkDetailsView.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-04-01.
//

import SwiftUI
import Kingfisher

struct DrinkDetailsView: View {
    
    // model
    var drinkDetails: DrinkDetails
    
    var body: some View {
        
        ScrollView {
            
            // image and name
            KFImage(URL(string: drinkDetails.thumbUrl))
                .resizable()
                .scaledToFit()
                .frame(width:256,height: 256)
                .padding(.vertical, 6)
                .cornerRadius(16)
                .shadow(color: .black, radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(drinkDetails.name)
                    .font(.title)
                
                // details
                HStack{
                    Text(drinkDetails.isAlcoholic)
                    Spacer()
                    Text(drinkDetails.category)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                
                // ingredients
                Text("Ingredients:")
                    .font(.title2)
                VStack(alignment: .leading){
                    ForEach(drinkDetails.ingredientsMeasurements, id: \.self){result in
                        Text(result).foregroundColor(.secondary)
                    }
                }
                
                // instructions
                Divider()
                Text("Instructions:")
                    .font(.title2)
                Text(drinkDetails.instructions!).foregroundColor(.secondary)
            }
            .padding()
            Spacer()
            
        }
        .background(Color.green
                        .ignoresSafeArea(.all))
    }
}
