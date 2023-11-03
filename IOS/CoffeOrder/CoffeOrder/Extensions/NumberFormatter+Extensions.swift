//
//  NumberFormatter+Extensions.swift
//  CoffeOrder
//
//  Created by Seymen Nadir Elmas on 30.10.2023.
//

import Foundation

extension NumberFormatter {
    
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
    
}
