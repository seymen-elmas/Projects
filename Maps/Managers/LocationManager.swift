//
//  LocationManager.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import Foundation
import CoreLocation
import MapKit

class LocationManager : NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    @Published var location : CLLocation?
    @Published var region : MKCoordinateRegion = MKCoordinateRegion()
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
    }
}
extension LocationManager : CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.first else{return}
        DispatchQueue.main.async {
            self.location = location
            self.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        }
        
    }
}
