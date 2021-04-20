//
//  DrinkDetailsView.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-04-01.
//

import SwiftUI
import Kingfisher

struct DrinkDetailsView: View {
    //viewmodel
    
    // model
    let drinkDetails: DrinkDetails
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
                // check if ingredients and measurements are not nil, else just check if ingredients are nil
                Text("Ingredients:")
                    .font(.title2)
                VStack(alignment: .leading){
                    if(drinkDetails.ingredients[0] != nil && drinkDetails.measurements[0] != nil){
                        Text("\(drinkDetails.measurements[0]!) - \(drinkDetails.ingredients[0]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[0] != nil){
                        Text(drinkDetails.ingredients[0]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[1] != nil && drinkDetails.measurements[1] != nil){
                        Text("\(drinkDetails.measurements[1]!) - \(drinkDetails.ingredients[1]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[1] != nil){
                        Text(drinkDetails.ingredients[1]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[2] != nil && drinkDetails.measurements[2] != nil){
                        Text("\(drinkDetails.measurements[2]!) - \(drinkDetails.ingredients[2]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[2] != nil){
                        Text(drinkDetails.ingredients[2]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[3] != nil && drinkDetails.measurements[3] != nil){
                        Text("\(drinkDetails.measurements[3]!) - \(drinkDetails.ingredients[3]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[3] != nil){
                        Text(drinkDetails.ingredients[3]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[4] != nil && drinkDetails.measurements[4] != nil){
                        Text("\(drinkDetails.measurements[4]!) - \(drinkDetails.ingredients[4]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[4] != nil){
                        Text(drinkDetails.ingredients[4]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[5] != nil && drinkDetails.measurements[5] != nil){
                        Text("\(drinkDetails.measurements[5]!) - \(drinkDetails.ingredients[5]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[5] != nil){
                        Text(drinkDetails.ingredients[5]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[6] != nil && drinkDetails.measurements[6] != nil){
                        Text("\(drinkDetails.measurements[6]!) - \(drinkDetails.ingredients[6]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[6] != nil){
                        Text(drinkDetails.ingredients[6]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[7] != nil && drinkDetails.measurements[7] != nil){
                        Text("\(drinkDetails.measurements[7]!) - \(drinkDetails.ingredients[7]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[7] != nil){
                        Text(drinkDetails.ingredients[7]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[8] != nil && drinkDetails.measurements[8] != nil){
                        Text("\(drinkDetails.measurements[8]!) - \(drinkDetails.ingredients[8]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[8] != nil){
                        Text(drinkDetails.ingredients[8]!).foregroundColor(.secondary)
                    }
                    if(drinkDetails.ingredients[9] != nil && drinkDetails.measurements[9] != nil){
                        Text("\(drinkDetails.measurements[9]!) - \(drinkDetails.ingredients[9]!)").foregroundColor(.secondary)
                    }else if(drinkDetails.ingredients[9] != nil){
                        Text(drinkDetails.ingredients[9]!).foregroundColor(.secondary)
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
    
    func getIngredients(){
        
    }
}
