//
//  MapView.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: NSViewRepresentable {
    
    typealias NSViewType = MKMapView
    
    private var annotations: [PlaceAnnotation] = []
    private var selectedPlace: PlaceAnnotation?
    
    init(annotations: [PlaceAnnotation], selectedPlace: PlaceAnnotation?) {
        self.annotations = annotations
        self.selectedPlace = selectedPlace
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
        
        // remove all annotations
        map.removeAnnotations(map.annotations)
        
        // add annotations
        map.addAnnotations(annotations)
        
        if let selectedPlace = selectedPlace {
            map.selectAnnotation(selectedPlace, animated: true)
        }
        
    }
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator()
    }
}
