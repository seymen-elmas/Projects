//
//  HomeScreen.swift
//  bio
//
//  Created by Seymen Nadir Elmas on 17.10.2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            Text("Welcome My Personal App")
                .font(.largeTitle)
            CardScreen()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
