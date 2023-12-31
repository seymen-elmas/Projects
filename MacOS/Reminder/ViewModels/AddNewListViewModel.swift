//
//  AddNewListViewModel.swift
//  Reminder
//
//  Created by Seymen Nadir Elmas on 28.09.2023.
//

import Foundation
import CoreData
import SwiftUI

class AddNewListViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var color: Color = .blue
    
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func save() {
        
        do {
            
            let myList = MyList(context: context)
            myList.name = name
            myList.color = UIColor(color)
            try myList.save()
        } catch {
            print(error)
        }
        
    }
    
}
