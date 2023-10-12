//
//  StockDetailScreen.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 12.10.2023.
//
import SwiftUI

struct StockDetailScreen: View {
    
    let stock: StockViewModel
    @StateObject private var vm = StockDetailViewModel()
    @EnvironmentObject private var routeState: RouteState
    
    var body: some View {
        ScrollView {
            VStack {
                
                NewsArticleHeaderView(symbol: stock.symbol)
                
                GeometryReader { g in
                
                    ZStack {
                        StockGraphBackgroundView()
                        .overlay {
                            LineChartView(values: stock.historicalPrices, labels: Constants.getYearlyLabels(), screenWidth: g.size.width/2)
                    }.frame(maxWidth: .infinity, alignment: .center)
                }
                    
                }.padding()
                    .frame(height: 200)
                Spacer()
                
                ArticlesGridView(articles: vm.articles) { article in
                    
                    guard let articleURL = article.url else { return }
                    routeState.push(.stockDetail(stock))
                    routeState.route = .articleDetail(articleURL)
                }
                
            }.task(id: stock) {
                await vm.fetchArticlesByStock(stock: stock)
            }
        }
    }
}

struct StockDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        let stockVM = StockViewModel(stock: Stock(symbol: "AAPLE", description: "Apple", price: 184, change: "+2.42", historicalPrices: []))
        return StockDetailScreen(stock: stockVM)
    }
}
