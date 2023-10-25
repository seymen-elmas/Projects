//
//  ContentView.swift
//  menu-2
//
//  Created by Seymen Nadir Elmas on 25.10.2023.
//

import SwiftUI

struct ColorPair : Identifiable {
    var id = UUID()
    let color1 : Color
    let color2 : Color
    
    
}


struct ContentView: View {
    @Namespace var iconTransistion
    @State var selecttedRectIndices = Set<UUID>()
    @State var iconScale : [UUID : CGFloat] = [:]
    @State var showChecMark : [UUID : Bool] = [:]
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    let colorPairs :[ColorPair] = [
        ColorPair(color1: .red, color2: .yellow),
        ColorPair(color1: .green, color2: .blue),
        ColorPair(color1: .purple, color2: .pink),
        ColorPair(color1: .gray, color2: .orange),
        ColorPair(color1: .black, color2: .white),
        ColorPair(color1: .blue, color2: .red)
    ]
    var body: some View {
        LazyVGrid(columns: columns,spacing: 15) {
            ForEach(colorPairs) { item in
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 160,height: 160)
                        .foregroundColor(.clear)
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(AngularGradient(gradient: Gradient(colors: [item.color1,item.color2]), center: .center))
                        .scaleEffect(selecttedRectIndices.contains(item.id) ? 0.8 :1)
                        .frame(width: 160,height: 160)
                        .overlay(alignment: .bottomTrailing) {
                            Image(systemName: "circle")
                                .font(.title)
                                .foregroundColor(.white)
                                .scaleEffect(iconScale[item.id] ?? 1)
                            if showChecMark[item.id] == true {
                                ZStack{
                                    Circle()
                                        .frame(width: 20)
                                        .foregroundColor(.blue)
                                    Image(systemName: "checkmark.circle")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .scaleEffect(iconScale[item.id] ?? 1)
                                }
                            }
                            
                        }
                        .padding(5)
                }
                .onTapGesture {
                    withAnimation {
                        if selecttedRectIndices.contains(item.id){
                            selecttedRectIndices.remove(item.id)
                            iconScale[item.id] = 1
                            showChecMark[item.id] = false
                        }else {
                            selecttedRectIndices.insert(item.id)
                            iconScale[item.id] = 0.2
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                                withAnimation(.spring()){
                                    iconScale[item.id] = 1
                                    
                                }
                                showChecMark[item.id] = true
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal,30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
