//
//  BartenderAppMVVMApp.swift
//  BartenderAppMVVM
//
//  Created by dave noonz on 2021-03-30.
//

import SwiftUI

@main
struct BartenderMVVM: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct BartenderAppMVVMApp_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}
