//
//  WebViewScreen.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 12.10.2023.
//

import SwiftUI

struct WebViewScreen: View {
    
    @EnvironmentObject private var routeState: RouteState
    let url: URL
    
    var body: some View {
        VStack {
            WebView(url: url)
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Button("Back") {
                            if let route = routeState.pop() {
                                routeState.route = route
                            }
                        }
                    }
                }
        }
    }
}

struct WebViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        WebViewScreen(url: URL(string: "http://www.google.com")!)
    }
}
