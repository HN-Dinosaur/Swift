//
//  main.swift
//  Day16
//
//  Created by LongDengYu on 2021/2/21.
//

import Foundation

//protocol Person {
//    var name: String{set get}
//    var age: Int{get}
//    func run()
//    func eat()
//    }
//protocol Chinese {
//    var contry: String{get}
//    var description: String{get}
//}
//struct Student: Person{
//    var name: String = "LongDengYu"
//    var age: Int = 19
//    var stuNumber: String = "2019011225"
//    func run() {
//        print("I'm running!")
//    }
//    func eat() {
//        print("I'm eating")
//    }
//}

//extension Student: Chinese{
//    var contry: String {
//        "My contry is China"
//    }
//    var description: String{
//        return "My name is \(name), my age is \(age), and my stuNumber is \(stuNumber)"
//    }
//}
//var me = Student()
//
//print(me.description)
//print(me.contry)
//print(me.age)
//print(me.name)
//print(me.stuNumber)
//me.age = 20
//me.name = "Long"
//me.stuNumber = "19"
//print(me.age)
//print(me.name)
//print(me.stuNumber)

//protocol Togglable {
//    mutating func toggle()
//}
//enum onOffSwitch: Togglable{
//    case on, off
//    mutating func toggle() {
//        switch self {
//        case .on:
//            self = .off
//        case .off:
//            self = .on
//        }
//    }
//}
//var test = onOffSwitch.off
//test.toggle()
//print(test)


//protocol SomeProtocol {
//    init(someParameter: Int)
//}
//class SomeClass: SomeProtocol {
//    required init(someParameter: Int) {
//        print("Successfully!")
//    }
//}

//class Father {
//    init() {
//    }
//}
//protocol SomeProtocol {
//    init()
//}
//class SonClass: Father, SomeProtocol{
//    required override init() {
//        print("Successfully!")
//    }
//}
//var son = SonClass()


//protocol LoginContrat {
//    func write()
//}
//class Company{
//    var delegate: LoginContrat?
//    func login() {
//        delegate?.write()
//    }
//}
//class Super: LoginContrat {
//    func write() {
//        print("Successfully!")
//    }
//}
//var instance = Company()
//instance.login()
//
//var superInstance = Super()
//instance.delegate = superInstance
//instance.login()
