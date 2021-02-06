//
//  main.swift
//  Day04
//
//  Created by LongDengYu on 2021/2/6.
//


//Control Flow
import Foundation
//For in
/*
let i = 5
for tickMark in stride(from: 0, through: 60 , by: i){
    print("\(tickMark) ",terminator: "")
}
*/
 //while And repeat-while
/*
var i = 5
repeat{
    print(i)
    i += 1
}while i < 10
*/
//switch
/*
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin")
case (-2...2,-2...2):
    print("in the box")

default:
    print("\(somePoint) is out of the box")

}
*/
//continue
//break
//fallthrough
/*
let i = 7
var d = "The No.\(i) is"
switch i {
case 2,3,5,7,8:
    d += " a prime number, and also"
    fallthrough
default:
    d += " an Integer"
}
 
print(d)
 */
//guard
func greeting(Person: [String:String])->Void{
    guard let name = Person["name"] else {
        return
    }
    print("Hello \(name)")
    guard let age = Person["age"] else {
        print("else")
        return
    }
    print("Wow! You are so young, and you just \(age)")
    
}
var dic: [String:String]

greeting(Person: ["name":"xixi"])
greeting(Person: ["name":"ming","age":"18"])
