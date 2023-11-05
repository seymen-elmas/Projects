//
//  CoreDataManager.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let shared = CoreDataManager()
    private var presistentContainer : NSPersistentContainer
    init() {
        presistentContainer = NSPersistentContainer(name: "MyValletModel")
        presistentContainer.loadPersistentStores { description, error in
            if let error {
                fatalError("Unable to initialize Core Data Stack \(error)")
            }
        }
    }
    var viewContext : NSManagedObjectContext {
        presistentContainer.viewContext
    }
}
