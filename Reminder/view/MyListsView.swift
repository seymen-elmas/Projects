//
//  MyListsView.swift
//  Reminder
//
//  Created by Seymen Nadir Elmas on 2.10.2023.
//

import SwiftUI

struct MyListsView: View {
    
    @ObservedObject var vm : MyListsViewModel
    init(vm: MyListsViewModel) {
        self.vm = vm
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("My Lists")
            ForEach(vm.myLists){ myList in
                HStack{
                    Text(myList.name)
                }
                
            }
        }
    }
}

struct MyListsView_Previews: PreviewProvider {
    static var previews: some View {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        MyListsView(vm: MyListsViewModel(context :context))
    }
}
