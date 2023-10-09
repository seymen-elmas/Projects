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
    
    
}

