//
//  main.swift
//  Day07
//
//  Created by LongDengYu on 2021/2/9.
//

import Foundation

//enum Location{
//    case west
//    case north
//    case east
//    case south
//}
//let myLocation = Location.west
//switch myLocation {
//case .west:
//    print("west")
//case .north:
//    print("north")
//case .east:
//    print("east")
//case .south:
//    print("south")
//default:
//    print("other location")
//}
//enum Location:CaseIterable{
//    case north,west,east,south
//}
//for location in Location.allCases{
//    print(location)
//}
//enum Barcode{
//    case upc(Int)
//    case qrCode(String)
//}
//var productBarcode = Barcode.upc(57)
//productBarcode = .qrCode("aerfa")
//switch productBarcode{
//case .upc(var number):
//    print(number)
//case .qrCode(var string):
//    print(string)
//}
//enum ASCIIControlCharacter: Character{
//    case tab = "\t"
//    case lineFeed = "\n"
//    case carriageReturn = "\r"
//}
//ASCIIControlCharacter.lineFeed.rawValue = "\t"
//print(simpleCharacter)

//enum Plant: Int{
//    case mercury = 1,venus,earth,mars,jupiter,saturn,uranus,neptune
//}
//print(Plant.neptune.rawValue)
//let myPlant = Plant(rawValue: 3)
//print(myPlant!)
enum ArithmeticExpression{
    case number(Int)
    indirect case addition(ArithmeticExpression,ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression,ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
func evaluate(_ expression: ArithmeticExpression)->Int{
    switch expression {
    case let .number(value):
        return value
    case let .addition(first, second):
        return evaluate(first) + evaluate(second)
    case let .multiplication(first, second):
        return evaluate(first) * evaluate(second)
    }
}
print(evaluate(product))
