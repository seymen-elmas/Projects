//
//  Route.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 12.10.2023.
//

import Foundation

enum Route {
    case businessArticles
    case stockDetail(StockViewModel)
    case articleDetail(URL)
}
