//
//  DistanceFormatter.swift
//  Maps
//
//  Created by Seymen Nadir Elmas 
//

import Foundation

class DistanceFormatter {
    
    var unitOptions: DistanceUnit = .miles
    
    func format(distanceInMeters: Double) -> String {
        switch unitOptions {
            case .miles:
                return formatForMiles(distanceInMeters: distanceInMeters)
            case .kilometers:
                return formatForKms(distanceInMeters: distanceInMeters)
        }
    }
    
    private func formatForMiles(distanceInMeters: Double) -> String {
        switch distanceInMeters {
            case 0...182:
                print(distanceInMeters)
                return distanceInMeters.toFeet().displayDistance(.feet)
            case 183...:
                return distanceInMeters.toMiles().displayDistance(.miles)
            default:
                return distanceInMeters.toFeet().displayDistance(.feet)
        }
    }
    
    private func formatForKms(distanceInMeters: Double) -> String {
        switch distanceInMeters {
            case 0...900:
                return distanceInMeters.toMeters().displayDistance(.meters)
            case 901...:
                return distanceInMeters.toKms().displayDistance(.kilometers)
            default:
                return distanceInMeters.toMeters().displayDistance(.meters)
        }
    }
}
