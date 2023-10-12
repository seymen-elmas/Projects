//
//  AppState.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import Foundation

class AppState: ObservableObject {
    var stockState: StockState
    var routeState: RouteState
    
    init(stockState: StockState = StockState(), routeState: RouteState = RouteState()) {
        self.stockState = stockState
        self.routeState = routeState
    }
}

class StockState: ObservableObject {
    @Published var stocks: [StockViewModel] = []
    
    func stockBySymbol(_ symbol: String) -> StockViewModel? {
        
        guard let stock = (stocks.first { $0.symbol == symbol }) else {
            return nil
        }
        
        return stock
    }
}

class RouteState: ObservableObject {
    
    var routes: [Route] = []
    @Published var route: Route = .businessArticles
    
    func push(_ route: Route) {
        routes.append(route)
        self.route = route
    }
    
    func pop() -> Route? {
        return routes.popLast()
    }
}
