//
//  StocksApp.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

@main
struct StocksApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .frame(minWidth: 600,minHeight: 600)
                .environmentObject(AppState())
        }
    }
}
