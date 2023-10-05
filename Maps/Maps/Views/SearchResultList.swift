//
//  SearchResultList.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 5.10.2023.
//
import SwiftUI

struct SearchResultList: View {
    
    let places: [PlaceAnnotation]
    
    var body: some View {
        List(places) { place in
            Text(place.title ?? "")
        }
    }
}

struct SearchResultList_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultList(places: [])
    }
}

