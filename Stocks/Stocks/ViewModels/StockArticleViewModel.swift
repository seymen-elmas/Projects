//
//  StockArticleViewModel.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 9.10.2023.
//
import Foundation

struct StockArticleViewModel: Identifiable {
    
    let id = UUID()
    
    private let stockModel: Stock?
    private let articlesModel: [Article]
    
    init(stock: Stock? = nil, articles: [Article]) {
        self.stockModel = stock
        self.articlesModel = articles
    }
    
    var stock: StockViewModel? {
        guard let stockModel = stockModel else { return nil }
        return StockViewModel(stock: stockModel)
    }
    
    var articles: [ArticleViewModel] {
        articlesModel.map(ArticleViewModel.init)
    }
    
    
    
}

