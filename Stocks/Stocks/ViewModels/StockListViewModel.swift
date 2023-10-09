//
//  StockListViewModel.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import Foundation
@MainActor
class StockListViewModel: ObservableObject {
    
    let appState: AppState
    
    init(appState: AppState) {
        self.appState = appState
    }
    
    var stocks: [StockViewModel] {
        appState.stocks
    }
    
    func getStocks() async {
        
        do {
            let stocks = try await Webservice().fetchStocks()
            appState.stocks = stocks.map(StockViewModel.init)
        } catch {
            print(error)
        }
    }
    
}
