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
            
            let appState = AppState()
            
            HomeScreen()
                .frame(minWidth: 1280, minHeight: 720)
                .environmentObject(appState)
        }.commands {
            CommandGroup(after: .appInfo) {
                Button("Preferences") {
                    PreferencesScreen()
                        .openInWindow(title: "Preferences", sender: self)
                }
            }
        }
    }
}
