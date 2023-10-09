//
//  SideBarScreen.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

struct SideBarScreen: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack(alignment: .leading) {
            StockListScreen(vm: StockListViewModel(appState: appState))
        }
    }
}

struct SideBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        SideBarScreen()
            .environmentObject(AppState())
    }
}
