//
//  ValletListView.swift
//  MyVallet
//
//  Created by Seymen Nadir Elmas on 5.11.2023.
//

import SwiftUI

struct ValletListView: View {
    let valletCategoryResults : FetchedResults<ValletCategory>
    
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
                }
            }else {
                Text("No Budget Categories Exist")
            }
        }
    }
}

