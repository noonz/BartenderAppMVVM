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
    @ObservedObject var viewModel = DrinkViewModel()
    let drinkDetails: DrinkDetails
    
    var body: some View {
//        Text("Drink ID: \(drinkId)")
        //TODO: Build drink details page
        VStack{
            Text(drinkDetails.name)
                .font(.headline).bold()
            KFImage(URL(string: drinkDetails.thumbUrl))
                .resizable()
                .scaledToFit()
                .frame(width:96,height: 96).padding(.vertical, 6)
        }
    }
}

//struct DrinkDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrinkDetailsView(drinkId: "test")
//    }
//}
