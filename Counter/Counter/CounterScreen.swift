//
//  CounterScreen.swift
//  Counter
//
//  Created by Seymen Nadir Elmas on 14.10.2023.
//

import SwiftUI

struct CounterScreen: View {
    @State var count : Int = 0
    var body: some View {
          VStack{
            ZStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 300,height: 300,alignment: .center)
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 200 ,height: 200,alignment: .center)
                Text("\(count)")
            }
            HStack{
                Button("Play"){
                    count = count + 1
                
                    
                }
                
                Button("Reset"){
                    count = 0
                    
                }
                
            }
        }
    }
}

struct CounterScreen_Previews: PreviewProvider {
    static var previews: some View {
        CounterScreen()
    }
}
