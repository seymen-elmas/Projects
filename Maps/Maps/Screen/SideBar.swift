//
//  SideBar.swift
//  Maps
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import SwiftUI

struct SideBar: View {
    
    private var vm = SearchResultsViewModel()
    @State private var search: String = ""
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            SearchResultList(places: appState.places)
        }.searchable(text: $search, placement: .sidebar, prompt: "Search Maps")
            .onChange(of: search, perform: { value in
                
                vm.search(text: value) { places in
                    appState.places = places
                }
               
            })
            .padding()
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
