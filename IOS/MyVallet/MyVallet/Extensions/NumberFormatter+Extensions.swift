//
//  NumberFormatter+Extensions.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import Foundation

extension NumberFormatter {
    
    static var currency :NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
