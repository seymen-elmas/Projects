//
//  HomeScreen.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import SwiftUI

struct HomeScreen: View {
    
    @AppStorage("useLightMap") var useLightMap: Bool = false
    
    var body: some View {
        NavigationView {
            Group {
                SideBar()
                    .frame(minWidth: 300)
                MapScreen()
            }.preferredColorScheme(useLightMap ? .light: .dark)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
