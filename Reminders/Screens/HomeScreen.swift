//
//  HomeScreen.swift
//  Reminders
//
//  Created by Seymen Nadir Elmas on 4.10.2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            SideBarView()
            Text("Liste")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
