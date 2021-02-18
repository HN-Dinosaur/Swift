//
//  main.swift
//  Extension
//
//  Created by LongDengYu on 2021/2/18.
//

import Foundation
func toSum(firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}
extension Int{
    func repeatition(result: (_ firstNumber: Int, _ secondNumber: Int)->Int){
        let finally = result(self, 5)
        print(finally)
    }
    func again(talk: ()->Void) {
        for _ in 0..<self{
            talk()
        }
    }
    func add(number: Int) -> Int {
        return self + number
    }
}

//class Test {
//    var i = 5
//    func test(talk: ()->Void)  {
//        for _ in 0..<i{
//            talk()
//        }
//    }
//}
//let test1 = Test()
extension Double{
    var km: Double{
        return self * 1000
    }
    var m: Double{
        return self
    }
    var cm: Double{
        return self / 100
    }
    var mm: Double{
        return self / 1000
    }
    var ft: Double{
        return self / 3.28084
    }
}
//var length: Double = 3.14.km
//print("This mood is \(length) meters")
//var totalMeters = 5.17.km + 8.66.ft
//print("Total \(totalMeters) meters")
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}
extension Rect{
    init(center: Point, size: Size) {
        origin.x = center.x - (size.width)
        origin.y = center.y - (size.height)
        self.size = size
    }
}
let myRect = Rect(center: Point(x: 15, y: 15), size: Size(width: 5, height: 5))
//print(myRect.origin)
//print(myRect.size)
extension Int{
    mutating func sqare(){
        self = self * self
    }
}
//var someInt = 3
//someInt.sqare()
//print(someInt)
extension Int{
    subscript(index: Int)->Int{
        var number: Int = 1
        for _ in 0..<index{
            number *= 10
        }
        return (self / number) % 10
    }
}
//var test = 123456
//print(test[2])
extension Int{
    enum Kind{
        case zero,positive,negative
    }
    var kind: Kind{
        switch self {
        case 0:
            return .zero
        case let x where x < 0:
            return .negative
        default:
            return .positive
        }
    }
}
func printIntegerKinds(_ numbers: [Int]){
    for i in numbers{
        switch i.kind {
        case .negative:
            print("- ",terminator: "")
        case .positive:
            print("+ ",terminator: "")
        default:
            print("0 ",terminator: "")
        }
    }
    print("")
}
var numbers: [Int] = [1,2,3,4,5,0,-2,-7]
printIntegerKinds(numbers)
