//
//  StockCellView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 9.10.2023.
//

import SwiftUI

struct StockCellView: View {
    
    let stock: StockViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(stock.symbol)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                Text(stock.name)
                    .opacity(0.4)
            }
            
            Spacer()
            VStack(alignment: .trailing, spacing: 2) {
                Text("\(stock.price, specifier: "%.2f")")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                
                Button {
                    
                } label: {
                    Text(stock.change)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }.frame(maxWidth: 60)
                     .background(changeColor(stock.change))
                    .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                
            }
        }
    }
}

struct StockCellView_Previews: PreviewProvider {
    static var previews: some View {
        StockCellView(stock: StockViewModel(stock: Stock(symbol: "APLE", description: "Apple", price: 162, change: "+2.42")))
    }
}
