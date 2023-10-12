//
//  Constants.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//
import Foundation
struct Constants {
    
    static let apiKey = "078bebabc1524eb2b98ef045adefc1b5"
    
    struct Urls {
        static let allStocks = URL(string: "https://island-bramble.glitch.me/latest-stocks")!
        static let businessArticles = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(apiKey)")!
        
        
        static func articlesBy(stock: Stock) -> URL {
            return URL(string: "https://newsapi.org/v2/everything?q=\(stock.description)&sortBy=publishedAt&apiKey=\(apiKey)")!
        }
        
    }
    
}
