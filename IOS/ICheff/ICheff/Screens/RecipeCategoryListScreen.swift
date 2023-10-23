//
//  RecipeCategoryListScreen.swift
//  ICheff
//
//  Created by Seymen Nadir Elmas on 22.10.2023.
//

import SwiftUI

struct RecipeCategoryListScreen: View {
    
    @StateObject var model: RecipeCategoryListViewModel = RecipeCategoryListViewModel()
    
    var body: some View {
        NavigationView {
            RecipeCategoryListView(categories: model.recipeCategories)
                .task {
                    await model.populateCategories()
                }
            .navigationTitle("Recipes")
        }
    }
}

struct RecipeCategoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryListScreen()
    }
}
