//
//  StocksApp.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

@main
struct StocksApp: App {
    
    let appState = AppState()
    
    var body: some Scene {
        WindowGroup {
           HomeScreen()
                .frame(minWidth: 400, minHeight: 400)
                .environmentObject(appState)
                .environmentObject(appState.routeState)
                .environmentObject(appState.stockState)
        }
    }
}
