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
    
    let timer = Timer.publish(every: 5.0, on: .main, in: .common).autoconnect()
    
    init(vm: StockListViewModel) {
        self._vm = StateObject(wrappedValue: vm)
    }
    
    var stocks: [StockViewModel] {
        
        if !search.isEmpty {
            return vm.stocks.filter { $0.symbol.starts(with: search.uppercased() )}
        } else {
            return vm.stocks
        }
    }
    
    var body: some View {
        VStack {
            StockListView(stocks: stocks)
                .searchable(text: $search, placement: .sidebar)
            
        }.task {
            await vm.getStocks()
        }
        .onReceive(timer) { _ in
            Task {
                await vm.getStocks()
            }
        }
    }
}

struct StockListScreen_Previews: PreviewProvider {
    static var previews: some View {
        StockListScreen(vm: StockListViewModel(appState: AppState()))
    }
}
