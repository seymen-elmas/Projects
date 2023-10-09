//
//  HomeScreen.swift
//  Stocks
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            SideBarScreen()
                .frame(minWidth: 300,maxWidth: 400)
            NewsArticleListScreen()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
