//
//  MyListViewModel.swift
//  Reminder
//
//  Created by Seymen Nadir Elmas on 2.10.2023.
//

import Foundation
import CoreData
import SwiftUI

struct MyListViewModel: Identifiable {
    private let myList : MyList
    init (myList : MyList){
        self.myList = myList
    }
    var id : NSManagedObjectID {
        myList.objectID
    }
    var name :String {
        myList.name ?? ""
    }
    var color : UIColor {
        myList.color ?? .clear
    }
}
