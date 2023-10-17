//
//  MyListsViewModel.swift
//  Reminder
//
//  Created by Seymen Nadir Elmas on 2.10.2023.
//

import Foundation
import SwiftUI
import CoreData

class MyListsViewModel: NSObject ,ObservableObject {
    
    @Published var myLists = [MyListViewModel]()
    private let fetchedResultsController : NSFetchedResultsController<MyList>
    private var context: NSManagedObjectContext
    init(context: NSManagedObjectContext){
        self.context = context
        fetchedResultsController = NSFetchedResultsController(fetchRequest: MyList.all, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        super.init()
        fetchedResultsController.delegate = self
    }
    private func fetchAll() {
        do{
            try fetchedResultsController.performFetch()
            guard let myLists = fetchedResultsController.fetchedObjects else {
                return
            }
            self.myLists = myLists.map(MyListViewModel.init)
        }
        catch{
            print(error)
        }
    }
}
extension MyListsViewModel:NSFetchedResultsControllerDelegate {
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        guard let myLists = controller.fetchedObjects as? [MyList] else {
            return
        }
        self.myLists = myLists.map(MyListViewModel.init)
    }
    
}
