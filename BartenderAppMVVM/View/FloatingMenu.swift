//
//  FloatingMenu.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-04-18.
//

import SwiftUI

struct FloatingMenu: View {
    // floating menu state
    @State var showMenuItem1 = false
    
    // viewModel
    @ObservedObject var viewModel = RandomDrinkViewModel()

    // menu button
    var body: some View {
        
        VStack{
            Spacer()
            // display menu item(s)
            if showMenuItem1{
                MenuItem(icon: "questionmark.circle.fill",
                         drinksDetails: viewModel.result[0])
            }
            Button(action:{
                print(viewModel.result[0].name)
                self.showMenu()
                if !showMenuItem1{
                    resetViewModel()
                }
            }){
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.blue)
                .shadow(color: .green, radius: 0.3, x:1, y:1 )
                .onAppear(perform: {
                    showMenuItem1 = false
                })
            }
        }
    }
    
    // 0.1 second delay for menu item after click
    func showMenu(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            withAnimation{
                self.showMenuItem1.toggle()
            }
        })
    }
    
    func resetViewModel(){
        DispatchQueue.main.async {
            viewModel.fetchDrinks()
        }
    }
}

struct MenuItem: View {
    // icon image
    var icon: String
    
    // nav link state
    @State private var isActive = false
    
    // model
    var drinksDetails: DrinkDetails
    
    // menu item(s)
    var body: some View {
        ZStack{

            // random drink menu item
            Image(systemName: icon)
                .resizable()
                .foregroundColor(Color.blue)
                .frame(width: 40, height: 40)
                .font(.system(size: 40, weight: .regular))
                .onTapGesture {
                    self.isActive = true
                }
                .background(NavigationLink(
                    destination: DrinkDetailsView(drinkDetails: self.drinksDetails)
                        .navigationTitle("Random Drink!"),
                    isActive: $isActive,
                    label: {
                        EmptyView()
                    })
                )
        }
        .shadow(color: .green, radius: 0.4, x: 1, y: 1)
        .transition(.move(edge: .trailing))
    }
}


struct FloatingMenu_Previews: PreviewProvider {
    static var previews: some View {
        FloatingMenu()
    }
}
