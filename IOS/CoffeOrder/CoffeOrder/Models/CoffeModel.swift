//
//  CoffeModel.swift
//  CoffeOrder
//
//  Created by Seymen Nadir Elmas on 30.10.2023.
//

import Foundation

@MainActor
class CoffeeModel: ObservableObject {
    
    let webservice: Webservice
    @Published private(set) var orders: [Order] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateOrders() async throws {
        orders = try await webservice.getOrders()
    }
    
}
