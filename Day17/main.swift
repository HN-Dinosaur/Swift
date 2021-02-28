//
//  main.swift
//  Day19
//
//  Created by LongDengYu on 2021/2/28.
//

import Foundation
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int{get}
    subscript(i: Int) -> Item {get}
}
struct Stack<Element>: Container{
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop() -> Element{
        return items.removeLast()
    }
    var count: Int {
        return items.count
    }
    mutating func append(_ item: Element) {
        self.push(item)
    }
    
    subscript(i: Int) -> Element {
        return items[i]
    }
}
extension Stack where Element: Equatable{
    func isTop(_ item: Element)->Bool{
        guard let topItem = items.last else{
            return false
        }
        return topItem == item
    }
}
//var myStack = Stack<String>()
//struct NotEqutable {
//
//}
//var notEqutableStack = Stack<NotEqutable>()
//var notEqutableValue = NotEqutable()
//notEqutableStack.push(notEqutableValue)
//notEqutableStack.isTop(notEqutableValue)
extension Container where Item: Equatable{
    func startsWith(_ item: Item) -> Bool{
        return count >= 1 && self[0] == item
    }
}
extension Array: Container {}
if [9,9,9].startsWith(42){
    print("Stars with 42!")
} else{
    print("Something else")
}
