//
//  CoffeOrderApp.swift
//  CoffeOrder
//
//  Created by Seymen Nadir Elmas on 30.10.2023.
//

import SwiftUI

@main
struct CoffeOrderApp: App {
    @StateObject private var model: CoffeeModel
    
    init() {
        var config = Configuration()
        let webservice = Webservice(baseurl: config.enviroment.baseUrl)
        _model = StateObject(wrappedValue: CoffeeModel(webservice: webservice))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}

