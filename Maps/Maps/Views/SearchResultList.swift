//
//  SearchResultList.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 5.10.2023.
//
import SwiftUI

struct SearchResultList: View {
    
    let places: [PlaceAnnotation]
    @StateObject private var locationManager = LocationManager()
    
    func formatDistance(for place: PlaceAnnotation) -> String {
        let distanceInMeters = place.getDistance(userLocation: locationManager.location)
        return distanceInMeters != nil ? "\(String(describing: distanceInMeters!))" : ""
    }
    
    var body: some View {
        List(places) { place in
            VStack(alignment: .leading) {
                Text(place.title ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(formatDistance(for: place))
                    .font(.caption)
                    .opacity(0.4)
            }
        }
    }
}

struct SearchResultList_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultList(places: [])
    }
}
