//
//  MyListItemViewModel.swift
//  Reminders
//
//  Created by Seymen Nadir Elmas
//

import Foundation
import CoreData

struct MyListItemViewModel: Identifiable {
    
    private let myListItem: MyListItem
    let id = UUID()
    
    init(myListItem: MyListItem) {
        self.myListItem = myListItem
    }
    
    var listItemId: NSManagedObjectID {
        myListItem.objectID
    }
    
    var title: String {
        myListItem.title ?? ""
    }
    
    var dueDate: DueDate? {
        if let date = myListItem.dueDate {
            return DueDate.from(value: date)
        } else {
            return nil
        }
    }
    
    var isCompleted: Bool {
        myListItem.isCompleted
    }
    
}
