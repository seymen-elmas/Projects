//
//  ValletListView.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import SwiftUI

struct ValletListView: View {
    let valletCategoryResults : FetchedResults<ValletCategory>
    let onDeleteVallet : (ValletCategory) -> Void
    var body: some View {
        List {
            if  !valletCategoryResults.isEmpty{
                ForEach(valletCategoryResults) { vallet in
                    HStack {
                        Text(vallet.title ?? "")
                        Spacer()
                        VStack{
                            Text(vallet.total as NSNumber, formatter: NumberFormatter.currency)
                        }
                    }
                }.onDelete { indexSet in
                    indexSet.map{valletCategoryResults[$0]}.forEach(onDeleteVallet)
                }
            }else {
                Text("No Budget Categories Exist")
            }
        }
    }
}

