//
//  main.swift
//  Day15
//
//  Created by LongDengYu on 2021/2/19.
//

import Foundation

//let names = ["Chris","Alex","Ewa","Barry","Daniella"]
//func backward(_ s1: String, _ s2: String)->Bool{
//    return s1 < s2
//}

//var reverseNames = names.sorted(by: backward)
//print(reverseNames)


//var reverseNames = names.sorted(by: {(s1:String, s2: String)->Bool in
//                                    return s1 < s2 })
//print(reverseNames)

//func makeIncrementer(forIncrement amount: Int) -> ()->Int {
//    var runningTotal = 0
//    func incrementer()->Int{
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//var makeIncrementerByTen = makeIncrementer(forIncrement: 10)
//print(makeIncrementerByTen())
//print(makeIncrementerByTen())

//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//var numbers = [16,81,510]
//
//let strings = numbers.map {(number)->String in
//    var number = number
//    var output = ""
//    repeat{
//        output = digitNames[number % 10]! + output
//        number /= 10
//    } while number > 0
//    return output
//}
//print(strings)

//var completionHandlers = [()->Void]()
//func someFunctionWithEscapingClosure(completionHandler: @escaping ()->Void){
//    completionHandlers.append(completionHandler)
//}
//func someFunctionWithNonescapeClosure(closure: ()->Void){
//    closure()
//}
//
//class SomeClass{
//    var x = 10
//    func something(){
//        someFunctionWithEscapingClosure {
//            self.x = 100
//        }
//        someFunctionWithNonescapeClosure {
//            x = 200
//        }
//    }
//}
//let instance = SomeClass()
//instance.something()
//print(instance.x)
//
//
//completionHandlers.first?()
//print(instance.x)

//class OtherSomeClass{
//    var x = 10
//    func doSomething(){
//        someFunctionWithEscapingClosure {
//            [self] in x = 100
//        }
//        someFunctionWithNonescapeClosure {
//            x = 200
//        }
//    }
//}
//let instance2 = OtherSomeClass()
//instance2.doSomething()
//print(instance2.x)
//
//completionHandlers.first?()
//print(instance2.x)

//struct ThirdSomeClass{
//    var x = 10
//    mutating func doSomething(){
//        //@escape闭包不能捕获可变引用，因为Enum和Struct不共享可变性
//        someFunctionWithEscapingClosure {
//            x = 100
//        }
//        someFunctionWithNonescapeClosure {
//            x = 200
//        }
//    }
//}


var names = ["Chris","Alex","Ewa","Barry","Daniella"]
//print(names.count)
print(names)
let aFunction = {names.remove(at: 0)}
//print(names.count)
aFunction()
print(names)
func test(closure: ()->String){
    print("Now Server \(closure())")
}
test(closure: {names.remove(at: 0)})
print(names)
func test2(closure: @autoclosure()->String){
    print("Now Server \(closure())")
}
test2(closure: names.remove(at: 0))
print(names)
var closures = [()->String]()
func test3(closure: @escaping @autoclosure()->String){
    closures.append(closure)
}
test3(closure: names.remove(at: 0))
test3(closure: names.remove(at: 0))

print(names)
print(closures.count)
for index in closures{
    print("Now Server \(index())!")
}
print(names)
