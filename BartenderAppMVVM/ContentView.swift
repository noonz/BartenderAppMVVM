//
//  ContentView.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            DrinksView().navigationTitle("Bartender")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
