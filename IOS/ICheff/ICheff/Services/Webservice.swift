//
//  Webservice.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 21.10.2023.
//

import Foundation

enum NetworkError : Error {
    case badRequest
    case decodingError
}

class Webservice {
    
    func get<T: Decodable>(url:URL,parse:(Data)->T?)async throws -> T {
        
          let (data,response) = try await URLSession.shared.data(from: url)
        
        if (response as? HTTPURLResponse)?.statusCode != 200 {
            throw NetworkError.badRequest
        }
        
        guard let result = parse(data) else {
            throw NetworkError.decodingError
        }
        return result
    }
    
}
