//
//  MyValletApp.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import SwiftUI

@main
struct MyValletApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, CoreDataManager.shared.viewContext)
        }
    }
}
