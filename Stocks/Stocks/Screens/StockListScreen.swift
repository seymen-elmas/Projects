//
//  StockListScreen.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

struct StockListScreen: View {
    
    @State private var search: String = ""
    @StateObject var vm: StockListViewModel
    
    init(vm: StockListViewModel) {
        self._vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack {
            StockListView(stocks: vm.stocks)
                .searchable(text: $search, placement: .sidebar)
        }.task {
            await vm.getStocks()
        }
    }
}

struct StockListScreen_Previews: PreviewProvider {
    static var previews: some View {
        StockListScreen(vm: StockListViewModel(appState: AppState()))
    }
}
