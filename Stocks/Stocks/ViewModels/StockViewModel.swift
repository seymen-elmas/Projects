//
//  StockViewModel.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import Foundation

struct StockViewModel: Identifiable, Equatable {
    
    private var stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    let id = UUID()
    
    var name: String {
        stock.description
    }
    
    var symbol: String {
        stock.symbol
    }
    
    var price: Double {
        stock.price
    }
    
    var change: String {
        stock.change
    }
    
   
    
    static func == (lhs: StockViewModel, rhs: StockViewModel) -> Bool {
        lhs.id == rhs.id
    }
}
