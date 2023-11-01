//
//  Webservice.swift
//  CoffeOrder
//
//  Created by Seymen Nadir Elmas on 30.10.2023.
//

import Foundation

enum NetworkError : Error{
    case badRequest
    case decodingError
    case badUrl
    
}

class Webservice {
    private var baseurl : URL
    init(baseurl: URL) {
        self.baseurl = baseurl
    }
    
    func getOrders() async throws -> [Order] {
        guard let url = URL(string: Endpoints.allOrders.path,relativeTo: baseurl) else {
            throw NetworkError.badUrl
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.badRequest
        }
        
        guard let orders = try? JSONDecoder().decode([Order].self, from: data) else {
            throw NetworkError.decodingError
        }
        
        return orders
    }
}
