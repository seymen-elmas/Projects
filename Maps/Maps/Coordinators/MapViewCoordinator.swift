//
//  MapViewCoordinator.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import Foundation
import MapKit

final class MapViewCoordinator :NSObject , MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        
        let region = MKCoordinateRegion(center: mapView.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true)
    }
}
