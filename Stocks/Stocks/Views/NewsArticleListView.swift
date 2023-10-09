//
//  NewsArticleListView.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 9.10.2023.
//

import SwiftUI

struct NewsArticleListView: View {
    
    let stockArticles: [StockArticleViewModel]
    
    var body: some View {
        ForEach(stockArticles) { stockArticle in
            ArticlesGridView(articles: stockArticle.articles)
        }
    }
}

struct NewsArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsArticleListView(stockArticles: [])
    }
}
