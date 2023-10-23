//
//  RecipeDetailResponse.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 22.10.2023.
//

import Foundation

struct RecipeDetailResponse: Decodable {
    let recipe: RecipeDetail
}

struct RecipeDetail: Decodable {
    let imageUrl: String
    let id: String
    let title: String
    let ingredients: [String]
}
