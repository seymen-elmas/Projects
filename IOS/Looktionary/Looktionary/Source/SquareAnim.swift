//
//  SquareAnim.swift
//  Looktionary
//
//  Created by Seymen Nadir Elmas on 27.10.2023.
//

import SwiftUI
enum AnimationState{
    case one(CGFloat)
    case two(CGFloat)
    case three(CGFloat)
    
    mutating func next() {
        switch self {
        case.one:
            self = .two(120)
        case .two :
            self = .three(100)
        case .three :
            self = .one(200)
        }
     
      
    }
    var resize :CGFloat{
        switch self {
        case.one(let resize),
                .two(let resize),
                .three(let resize):
            return resize
        }
    }
    var isTwo : Bool {
        switch self{
        case .two :
            return true
        default:
            return false
        }
    }
    var isThree : Bool {
        switch self{
        case .three :
            return true
        default:
            return false
        }
    }
}

struct SquareAnim: View {
    @State var animationstate : AnimationState = .one(200)
    @Binding var Height:CGFloat
    @Binding var Height2:CGFloat
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 2,style: .circular)
                .frame(width: 30,height: 20)
                .foregroundColor(.black)
            Rectangle()
                .frame(width: 30,height: 2)
                .offset(x: animationstate.isTwo ? 0 : 30)
            Rectangle()
                .frame(width: 2,height: 20)
                .offset(y: animationstate.isTwo ? 0 : 20)
            Rectangle()
                .frame(width: 2,height: 20)
                .offset(x:5,y: animationstate.isThree ? 0 : 20)
            Rectangle()
                .frame(width: 2,height: 20)
                .offset(x:-5,y: animationstate.isThree ? 0 : -20)
            Rectangle()
                .frame(width: 30,height: 2)
                .offset(x: animationstate.isThree ? 0 : 30)
            
        }
        .clipped()
        .mask({
            RoundedRectangle(cornerRadius: 5,style: .continuous)
        })
        .foregroundColor(.red)
        .onTapGesture {
            withAnimation {
                animationstate.next()
                Height = animationstate.resize
                if Height == 200 {
                    Height2 = 200
                }else if Height == 120 {
                    Height2 = 170
                }else {
                    Height2 = 110
                }
            }
        }
    }
}

struct SquareAnim_Previews: PreviewProvider {
    static var previews: some View {
        SquareAnim(Height: .constant(200), Height2: .constant(200))
    }
}

