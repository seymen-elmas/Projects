//
//  StockGraphBackgroundView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 12.10.2023.
//

import SwiftUI

struct StockGraphBackgroundView: View {
    
    let noOfRows: Int
    let noOfColumns: Int
    
    init(noOfRows: Int = 5, noOfColumns: Int = 8) {
            self.noOfRows = noOfRows
            self.noOfColumns = noOfColumns
    }
    
    
    var body: some View {
        VStack(spacing: 0) {
            
            ForEach(1...noOfRows, id: \.self) { _ in
                HStack(spacing: 0) {
                    ForEach(1...noOfColumns, id: \.self) { _ in
                        Spacer()
                            .padding()
                            .frame(width: 100)
                            .border(.gray)
                    }
                }.opacity(0.2)
            }
            
        }
    }
}

struct StockGraphBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        StockGraphBackgroundView()
    }
}
