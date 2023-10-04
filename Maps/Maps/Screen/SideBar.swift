//
//  SideBar.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import SwiftUI

struct SideBar: View {
    @State private var search :String = ""
    var body: some View {
        VStack{
            List(1...10,id: \.self){lis in
                Text("Search Result \(lis)")
            }
            
        }.searchable(text: $search,placement: .sidebar, prompt: "Search Maps")
        
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
