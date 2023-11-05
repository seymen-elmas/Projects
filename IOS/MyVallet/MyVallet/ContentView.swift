//
//  ContentView.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import SwiftUI
import CoreData
struct ContentView: View {
    @State private var isPresented :Bool = false
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: []) private var valletCategoryResutls : FetchedResults<ValletCategory>
    var body: some View {
        NavigationStack{
            VStack {
               
                ValletListView(valletCategoryResults: valletCategoryResutls)
            
            }.padding()
            .sheet(isPresented: $isPresented, content: {
                AddBudgetCategoryView()
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add New Category"){
                        isPresented = true
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
