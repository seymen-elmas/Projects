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
    func makeNSView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.showsTraffic = true
        map.showsBuildings = true
        map.delegate = context.coordinator
        return map
    }
    func updateNSView(_ nsView: MKMapView, context: Context) {
        
    }
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator()
        
    }
    
}
