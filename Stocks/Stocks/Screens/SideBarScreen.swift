//
//  SideBarScreen.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

struct SideBarScreen: View {
    
    @EnvironmentObject var stockState: StockState
    
    var body: some View {
        VStack(alignment: .leading) {
            StockListScreen(vm: StockListViewModel(stockState: stockState))
        }
    }
}

struct SideBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        SideBarScreen()
            .environmentObject(AppState())
    }
}
