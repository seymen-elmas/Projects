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
    var total : Double {
        valletCategoryResutls.reduce(0) { result, valletCategory in
            return result + valletCategory.total
        }
    }
    private func deleteCategory(valletCategory : ValletCategory){
        viewContext.delete(valletCategory)
        do{
            try viewContext.save()
        } catch {
            print(error)
        }
    }
    var body: some View {
        NavigationStack{
            VStack {
                Text(total as NSNumber , formatter: NumberFormatter.currency)
                    .fontWeight(.bold)
                    .font(.title2)
                    
                ValletListView(valletCategoryResults: valletCategoryResutls,onDeleteVallet: deleteCategory) 
            
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
        ContentView().environment(\.managedObjectContext, CoreDataManager.shared.viewContext)
    }
}
