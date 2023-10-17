//
//  MapScreen.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import SwiftUI

struct MapScreen: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        MapView(annotations: appState.places, selectedPlace: appState.selectedPlace)
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
