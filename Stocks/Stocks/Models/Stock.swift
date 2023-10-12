//
//  Stock.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//
import Foundation

struct Stock: Decodable {
    
    let symbol: String
    let description: String
    let price: Double
    let change: String
    let historicalPrices: [Double]
    
}

extension Stock {
    
    static func fromVM(_ vm: StockViewModel) -> Stock {
        Stock(symbol: vm.symbol, description: vm.name, price: vm.price, change: vm.change, historicalPrices: vm.historicalPrices)
    }
    
}
