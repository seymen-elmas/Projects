//
//  DetailScreen.swift
//  Looktionary
//
//  Created by Seymen Nadir Elmas on 27.10.2023.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {
        VStack{
            Image(systemName: "circle")
                .fixedSize(horizontal: true, vertical: true)
            Text("Your Word :" )
            Text("Meaning :")
        }
        
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
