//
//  AppState.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import Foundation

class AppState: ObservableObject {
    @Published var stocks: [StockViewModel] = []
}

