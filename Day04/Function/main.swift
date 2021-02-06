//
//  main.swift
//  Day04-2
//
//  Created by LongDengYu on 2021/2/6.
//

import Foundation
//inout
func swap1(firstNumber a: inout Int,secondNumber b: inout Int){
    let temp = a
    a = b
    b = temp
}

//variadic parameters
func variadic(numbers: Double...)->Double{
    var total: Double = 0
    for i in numbers{
        total += i
    }
    return total
}
func addTwoInt(firstNumber a: Int,SecondNumber b: Int)->Int{
    return a + b
}
func multiplyTwoInt(firstNumber a: Int,secondNumber b:Int)->Int{
    return a * b
}
func printMathResult(_ mathFunction:(Int,Int)->Int,a: Int,b: Int){
    print("Result: \(mathFunction(a,b))")
}
//func stepForward(_ input: Int)->Int{
//    return input + 1
//}
//func stepBackward(_ input: Int)->Int{
//    return input - 1
//}
//func chooseStepFunction(backward: Bool)->(Int)->Int{
//    return backward ? stepBackward : stepForward
//}
//var currentValue = 3
//let moveToZero = chooseStepFunction(backward: currentValue > 0)
//
//while currentValue != 0{
//    print("\(currentValue)...")
//    currentValue = moveToZero(currentValue)
//}
//print("Zero!")

//printMathResult(multiplyTwoInt, a: 5, b: 7)
//print(multiplyTwoInt(firstNumber: 5, secondNumber: 8))
//print(addTwoInt(firstNumber: 5, SecondNumber: 7))
//print(variadic(numbers: 1,2,3,4))
//var a = 5,b = 10
//print("a = \(a)|b = \(b)")
//swap1(firstNumber: &a, secondNumber: &b)
//print("a = \(a)|b = \(b)")
//var mathFunction = multiplyTwoInt
//print("Result: \(mathFunction(1,2))")

func chooseType(backward: Bool)->(Int)->Int{
    func stepForward(_ input: Int)->Int{
        return input + 1
    }
    func stepBackward(_ input: Int)->Int{
        return input - 1
    }
    return backward ? stepBackward : stepForward
}
var current = 3
let typeToZero = chooseType(backward: 3 > 0)
while current != 0{
    print("\(current)...")
    current = typeToZero(current)
}
print("Zero!")
