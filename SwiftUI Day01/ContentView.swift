//
//  ContentView.swift
//  Shared
//
//  Created by LongDengYu on 2021/3/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4) { index in
               CardView()
            }
        }
        .padding()
        .foregroundColor(Color.orange)
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CardView: View{
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻").font(Font.largeTitle)
            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}
