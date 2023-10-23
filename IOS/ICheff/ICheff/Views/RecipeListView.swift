//
//  RecipeListView.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 22.10.2023.
//

import SwiftUI

struct RecipeListView: View {
    
    let recipes: [RecipeViewModel]
    
    var body: some View {
        List(recipes, id: \.id) { recipe in
            NavigationLink(destination: RecipeDetailScreen(recipeId: recipe.id).navigationTitle(recipe.title)) {
                RecipeCellView(recipe: recipe)
            }
        }
    }
}
