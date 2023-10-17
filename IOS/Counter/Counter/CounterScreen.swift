//
//  CounterScreen.swift
//  Counter
//
//  Created by Seymen Nadir Elmas on 14.10.2023.
//

import SwiftUI

struct CounterScreen: View {
    @State var count = 10
    @State var runing = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
     
          VStack{
            ZStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 300,height: 300,alignment: .center)
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 250 ,height: 250,alignment: .center)
                    
                Text("\(count)")
                    .onReceive(timer){ _ in
                        if count > 0 && runing{
                            count -= 1
                        } else {
                            runing = false
                        }
                        
                    }
            }
              HStack {
                  Button("Start"){
                      runing = true
                      
                  }
                  .foregroundColor(.blue)
                  .buttonStyle(.bordered)
                  .tint(.red)
                  Button("Pause"){
                      runing = false
                      
                  }
                  .foregroundColor(.blue)
                  .buttonStyle(.bordered)
                  .tint(.red)
                  Button("Reset"){
                      count = 10
                      
                  }
                  .foregroundColor(.blue)
                  .buttonStyle(.bordered)
                  .tint(.red)
                         }
                   }
        }
    }


struct CounterScreen_Previews: PreviewProvider {
    static var previews: some View {
        CounterScreen()
    }
}
