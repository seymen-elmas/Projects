//
//  SideBarView.swift
//  Reminder
//
//  Created by Seymen Nadir Elmas on 28.09.2023.
//

import SwiftUI

struct SideBarView: View {
    @Environment(\.managedObjectContext) var context
    @State private var isPresented: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Text("All items count 10")
            List(1...5, id:\.self){
                index in
                Text("List \(index)")
            }
            Button{
                isPresented = true
            }
        label:{
            HStack{
                Image(systemName: Constants.Icons.plusCircle)
                Text("Add List")
            }
        }
        .buttonStyle(.plain)
        .padding()
        }
        .sheet(isPresented: $isPresented){
            
        } content:{
            AddNewListView(vm: AddNewListViewModel(context: context))
        }
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
