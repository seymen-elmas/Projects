//
//  MainScreen.swift
//  Looktionary
//
//  Created by Seymen Nadir Elmas on 27.10.2023.
//

import SwiftUI

struct MainScreen: View {
    @State var Height:CGFloat = 200
    @State var Height2:CGFloat = 200
    let colors : [Color] = [.pink,.purple,.green,.blue,.orange,.red,.yellow,.cyan,.gray,.brown,.pink]
    var body: some View {
        NavigationStack {
            ScrollView{
                SquareAnim(Height: $Height, Height2: $Height2)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .padding(.horizontal)
                LazyVGrid (columns: [GridItem(.adaptive(minimum: Height),spacing: 10)],spacing: 10) {
                    ForEach(1..<11) { item in
                        ZStack{
                            RoundedRectangle(cornerRadius: 10,style: .continuous)
                                .frame(height: Height2)
                                .foregroundColor(colors[item % colors.count].opacity(0.6))
                            NavigationLink("Word\(item)"){
                                DetailScreen()
                            }
                        }
                    }
                }
              
            }
            
          }
        .navigationTitle("Welcome Looktionary")
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
