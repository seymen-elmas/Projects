//
//  ValletCategory+CoreDataClass.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import Foundation
import CoreData

@objc(ValletCategory)
public class ValletCategory : NSManagedObject {
    
    public override func awakeFromInsert() {
        self.dateCreated = Date()
    }
}
