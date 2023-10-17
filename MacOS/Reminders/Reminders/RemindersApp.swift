//
//  RemindersApp.swift
//  Reminders
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//
import SwiftUI

@main
struct RemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreen().environment(\.managedObjectContext, viewContext)
        }
    }
}

