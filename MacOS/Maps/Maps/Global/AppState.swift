//
//  AppState.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 5.10.2023.
//

import Foundation

class AppState: ObservableObject {
    @Published var places: [PlaceAnnotation] = []
    @Published var selectedPlace: PlaceAnnotation?
}
