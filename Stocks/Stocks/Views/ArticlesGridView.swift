//
//  ArticlesGridView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 9.10.2023.
//

import SwiftUI

struct ArticlesGridView: View {
    
    let columns = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    let articles: [ArticleViewModel]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(articles) { article in
                ArticleCellView(article: article)
            }
        }
    }
}

