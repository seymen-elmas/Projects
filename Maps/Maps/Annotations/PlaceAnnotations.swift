//
//  PlaceAnnotations.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 5.10.2023.
//

import Foundation
import MapKit
import Contacts

class PlaceAnnotation: NSObject, MKAnnotation, Identifiable {
    
    let id = UUID()
    private var mapItem: MKMapItem
    
    init(mapItem: MKMapItem) {
        self.mapItem = mapItem
    }
    
    var title: String? {
        mapItem.name
    }
    
    var phone: String {
        mapItem.phoneNumber ?? ""
    }
    
    var address: String {
       
        guard let postalAddress = mapItem.placemark.postalAddress else {
            return ""
        }
        
        return "\(postalAddress.street), (\(postalAddress.city) \(postalAddress.state), \(postalAddress.postalCode)"
    }
    
    var location: CLLocation? {
        return CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
    var coordinate: CLLocationCoordinate2D {
        mapItem.placemark.coordinate
    }
    
    var city: String {
        mapItem.placemark.locality ?? ""
    }
    
}
