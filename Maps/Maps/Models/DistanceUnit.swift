//
//  DistanceUnit.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 6.10.2023.
//

import Foundation

enum DistanceUnit: String, Codable, CaseIterable {
    case miles
    case kilometers
}

extension DistanceUnit {
    var title: String {
        switch self {
            case .miles:
                return "mi"
            case .kilometers:
                return "km"
        }
    }
}
