//
//  ArticleViewModel.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 9.10.2023.
//

import Foundation

struct ArticleViewModel: Identifiable {
    
    private let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    let id: UUID = UUID()
    
    var title: String {
        article.title ?? ""
    }
    
    var source: String {
        article.sourceName ?? ""
    }
    
    var url: URL? {
        
        guard let url = article.url else {
            return nil
        }
        
        return URL(string: url)
    }
    
    var urlToImage: URL? {
        
        guard let urlToImage = article.urlToImage else {
            return nil
        }
        
        return URL(string: urlToImage)
    }
    
}
