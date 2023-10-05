//
//  MapView.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import Foundation
import MapKit
import SwiftUI

struct MapView : NSViewRepresentable {
    
    typealias NSViewType = MKMapView
    private var annotations : [PlaceAnnotation] = []
    init(annotations : [PlaceAnnotation]){
        self.annotations = annotations
        
    }
    func makeNSView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.showsTraffic = true
        map.showsBuildings = true
        map.delegate = context.coordinator
        return map
    }
    func updateNSView(_ map: MKMapView, context: Context) {
        map.removeAnnotations(map.annotations)
        map.addAnnotations(annotations)
        
    }
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator()
        
    }
    
}
