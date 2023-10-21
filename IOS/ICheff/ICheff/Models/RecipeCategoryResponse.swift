//
//  RecipeCategoryResponse.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 21.10.2023.
//

import Foundation

struct RecipeCategoryResponse: Decodable {
    let categories : [RecipeCategory]
}
 
struct RecipeCategory : Decodable {
    let imageUrl: String
    let title : String
    
}
