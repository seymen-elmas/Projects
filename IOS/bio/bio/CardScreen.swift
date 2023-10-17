//
//  CardScreen.swift
//  bio
//
//  Created by Seymen Nadir Elmas on 17.10.2023.
//

import SwiftUI

struct CardScreen: View {
    @State var rotation:CGFloat = 0.0
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20,style: .continuous)
                .frame(width: 260,height: 340)
                .foregroundColor(Color(.black))
            RoundedRectangle(cornerRadius: 20,style: .continuous)
                .frame(width: 130,height: 500)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color(.yellow),Color(.red),Color(.cyan),Color(.magenta)]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask{
                    RoundedRectangle(cornerRadius: 20,style: .continuous)
                        .stroke(lineWidth:7)
                        .frame(width: 256,height: 336)
                }
            VStack{
                Text("Personal Info:")
                    .font(.title)
                    .foregroundColor(.white)
                Text("Seymen N. Elmas")
                    .font(.headline)
                    .foregroundColor(.white)
                Text("İOS DEVOPLER")
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            

        }
        .onAppear{
            withAnimation(.linear(duration: 4).repeatForever(autoreverses:false)){
                rotation = 360
            }
        }
    }
}

struct CardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardScreen()
    }
}
