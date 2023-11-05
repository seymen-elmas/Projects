//
//  AddBudgetCategoryView.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import SwiftUI

struct AddBudgetCategoryView: View {
    @State private var title : String = ""
    @State private var total : Double = 100.00
    @State private var messages : [String] = []
    
    @Environment(\.managedObjectContext) private var viewContext
    
    var isValid :Bool {
        messages.removeAll()
        
        if title.isEmpty {
            messages.append("Title is required")
        }
        if total <= 0 {
            messages.append("Total should be grether than 1")
        }
        return messages.count == 0
    }
    private func save() {
       let valletCategory = ValletCategory(context: viewContext)
        valletCategory.title = title
        valletCategory.total = total
        //save context
        do{
            try viewContext.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    var body: some View {
        NavigationStack{
            Form {
                TextField("Title", text: $title)
                Slider(value: $total, in : 0...500,step: 25){
                    Text("Total")
                } minimumValueLabel: {
                    Text("0")
                }
            maximumValueLabel: {
                Text("500")
            }
                
                Text(total as NSNumber ,formatter: NumberFormatter.currency)
                    .frame(maxWidth:.infinity,alignment:.center)
                ForEach(messages, id: \.self) { message in
                    Text(message)
                }
                
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save"){
                        if isValid {
                            save()
                        }
                    }
                }
            }
        }
    }
}

struct AddBudgetCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddBudgetCategoryView()
    }
}
