//
//  Grid.swift
//  Day01-1
//
//  Created by LongDengYu on 2021/3/9.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView

    init(_ items: [Item], viewForItem:@escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    var body: some View {
        
        return GeometryReader { geometry in
                let layout = GridLayout(itemCount: items.count, in: geometry.size)
                ForEach(items) { item in
                    viewForItem(item)
                        .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                        .position(layout.location(ofItemAt: items.firstIndex(of: item)!))
                }
            }
    }
    
//    var body: some View {
//        GeometryReader { geometry in
//            self.body(for: geometry.size)
//        }
//    }
//    func body(for size: CGSize) -> some View{
//        ForEach(items) { item in
//            self.body(for: item, in: size)
//        }
//    }
//    func body(for item: Item, in size: CGSize) -> some View{
//        return viewForItem(item)
//    }
}

//struct Grid_Previews: PreviewProvider {
//    static var previews: some View {
//        Grid()
//    }
//}
