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
    @State var rotation :CGFloat = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
     
          VStack{
            ZStack{
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 300,height: 300,alignment: .center)
                Circle()
                    
                    .frame(width: 450 ,height: 450,alignment: .center)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.yellow,.black]), startPoint: .top, endPoint: .bottom))
                    .rotationEffect(.degrees(rotation))
                    .mask{
                        Circle()
                            .stroke(lineWidth: 10)
                            .frame(width: 280,height: 280)
                    }
                    
                Text("\(count)")
                    .onReceive(timer){ _ in
                        if count > 0 && runing{
                            count -= 1
                        } else {
                            runing = false
                        }
                        
                    }
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            .onAppear{
                withAnimation(.linear(duration: 10).repeatForever(autoreverses:false)){
                    rotation = 360
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
