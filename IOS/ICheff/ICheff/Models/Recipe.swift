//
//  Recipe.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 22.10.2023.
//

import Foundation

struct RecipeResponse: Decodable {
    let recipes: [Recipe]
}

struct Recipe: Decodable {
    let id: String
    let imageUrl: String
    let title: String
}
