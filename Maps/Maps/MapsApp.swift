//
//  MapsApp.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import SwiftUI

@main
struct MapsApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .frame(minWidth:1200,minHeight: 720)
        }
    }
}