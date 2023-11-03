//
//  View+Extensions.swift
//  CoffeOrder
//
//  Created by Seymen Nadir Elmas on 1.11.2023.
//


import Foundation
import SwiftUI

extension View {
    
    func centerHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    
    @ViewBuilder
    func visible(_ value: Bool) -> some View {
        // you can use if-else also
        switch value {
            case true:
                self
            case false:
                EmptyView()
        }
    }
    
}

