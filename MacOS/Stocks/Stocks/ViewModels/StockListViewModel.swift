//
//  StockListViewModel.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import Foundation

@MainActor
class StockListViewModel: ObservableObject {
    
    let stockState: StockState
    
    init(stockState: StockState) {
        self.stockState = stockState
    }
    
    var stocks: [StockViewModel] {
        stockState.stocks
    }
    
    func getStocks() async {
        
        do {
            let stocks = try await Webservice().fetchStocks()
            stockState.stocks = stocks.map(StockViewModel.init)
        } catch {
            print(error)
        }
    }
    
}
