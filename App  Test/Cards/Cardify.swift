//
//  Cardify.swift
//  Day01-1
//
//  Created by LongDengYu on 2021/3/10.
//

import SwiftUI

struct Cardify: AnimatableModifier {
    var rotation: Double
    private let conrnerRadius: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
    var animatableData: Double{
        get{
            return rotation
        }
        set{
            rotation = newValue
        }
    }
    var isFaceUp: Bool{
        rotation < 90
    }
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    func body(content: Content) -> some View {
        ZStack{
            Group{
                RoundedRectangle(cornerRadius: conrnerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: conrnerRadius).stroke(lineWidth: edgeLineWidth)
                content
            }
                .opacity(isFaceUp ? 1 : 0)
            RoundedRectangle(cornerRadius: conrnerRadius).fill()
                .opacity(isFaceUp ? 0 : 1)
        }
        .rotation3DEffect(
            Angle.degrees(rotation),
            axis: (0,1,0)
            )
    }
}
//直接通过cardify来调用方法
extension View{
    func cardify(isFaceUp: Bool) -> some View{
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
