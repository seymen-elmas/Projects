//
//  BusinessNewsHeaderView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 9.10.2023.
//

import SwiftUI

struct BusinessNewsHeaderView: View {
    
    let onSelected: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Business News")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("From 􀣺News")
                .font(.caption2)
                .opacity(0.4)
        }.padding()
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.363, green: 0.354, blue: 0.383))
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .onTapGesture {
                onSelected()
            }
    }
}

struct BusinessNewsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessNewsHeaderView(onSelected: {})
    }
}
