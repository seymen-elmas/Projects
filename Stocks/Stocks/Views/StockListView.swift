//
//  StockListView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

struct StockListView: View {
    
    let stocks: [StockViewModel]
    
    var body: some View {
        List {
            
            BusinessNewsHeaderView()
            
            ForEach(stocks) { stock in
                StockCellView(stock: stock)
            }
            
        }
    }
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        let stock = Stock(symbol: "GOOG", description: "Google Innovation Media",  price: 50, change: "+3.24")
        
        let stock2 = Stock(symbol: "APLE", description: "Apple",  price: 172, change: "-0.24")
        
        StockListView(stocks: [StockViewModel(stock: stock), StockViewModel(stock: stock2)])
            .frame(maxWidth: 300)
    }
}
