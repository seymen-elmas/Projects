//
//  RecipeCategoryListView.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 22.10.2023.
//

import SwiftUI

struct RecipeCategoryListView: View {
    
    let categories: [RecipeCategoryViewModel]
    
    var body: some View {
        List(categories) { category in
            
            NavigationLink(destination: RecipeListScreen(recipeCategory: category).navigationTitle(category.title)) {
                RecipeCategoryCellView(recipeCategory: category)
            }
        }.listStyle(.plain)
    }
}
