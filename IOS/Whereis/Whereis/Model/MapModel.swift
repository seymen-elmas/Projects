//
//  MapModel.swift
//  Whereis
//
//  Created by Seymen Nadir Elmas on 19.10.2023.
//

import Foundation
import MapKit

struct Adress : Codable {
    let data : [Datum]
}
struct Datum: Codable {
    let latitude , longitude : Double
    let name : String?
}
struct Location : Identifiable {
    let id = UUID()
    let name :String
    let coordinate : CLLocationCoordinate2D
}
