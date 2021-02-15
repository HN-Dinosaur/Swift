//
//  main.swift
//  Day11
//
//  Created by LongDengYu on 2021/2/15.
//

import Foundation

//Initialization

//class Vehicle{
//    var wheels = 0
//    var description: String{
//        return "\(wheels) wheel(s)"
//    }
//}
//let vehicle = Vehicle()
//print(vehicle.description)
//class Bicycle: Vehicle{
//    override init() {
//        super.init()
//        wheels = 2
//    }
//}
//let bicycle = Bicycle()
//print(bicycle.description)
//class Hoverboard: Vehicle{
//    var color: String
//    init(color: String) {
//        self.color = color
//
//    }
//    override var description: String{
//        return super.description + "in a beautiful\(color)"
//    }
//}
//let hoverboard = Hoverboard(color: "white")
//print(hoverboard.description)

//Designated and Convenience Initializers in Action
//class Food {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    convenience init(){
//        self.init(name: "[Unname]")
//    }
//}
//let namedMeat = Food(name: "Bacon")
//print(namedMeat.name)
//let mystery = Food()
//print(mystery.name)
//
//class ReciperIngredient: Food {
//    var quantity: Int
//    init(name: String,quantity: Int) {
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    override convenience init(name: String){
//        self.init(name: name,quantity: 1)
//    }
//}
//let oneMysteryItem = ReciperIngredient()
//let oneBacon = ReciperIngredient(name: "Bacon")
//let sixEggs = ReciperIngredient(name: "egg", quantity: 6)
////print(oneMysteryItem.name)
////print(oneBacon.name)
////print(sixEggs.name)
//
//class ShoppingListItem: ReciperIngredient {
//    var purchased = false
//    var description: String{
//        var output = "\(quantity) * \(name)"
//        output += purchased ? " Yes" : "No"
//        return output
//    }
//}
//let me: [ShoppingListItem] = [ShoppingListItem(),
//        ShoppingListItem(name: "Bacon"),
//        ShoppingListItem(name: "Eggs", quantity: 6)
//    ]
//me[0].name = "Orange Juice"
//me[0].purchased = true
//for index in me{
//    print(index.description)
//}

//let wholeNumber: Double = 123456.0
//let pi = 3.0
//if let valueMaintained = Int(exactly: wholeNumber){
//    print("\(wholeNumber)--->\(valueMaintained)")
//}
//

//class Animal {
//    var species: String
//    init?(species: String) {
//        if species.isEmpty{
//            return nil
//        }
//        self.species = species
//    }
//}
//let someCreature = Animal(species: "Giraffe")
//if let giraffe = someCreature{
//    print("\(giraffe.species)")
//}
//let an = Animal(species: "")
//if an == nil{
//    print("no")
//}

//class Text {
//    var name: String
//    init?(name: String) {
//        if name.isEmpty{
//            return nil
//        }
//        self.name = name
//    }
//    deinit {
//        print("over")
//    }
//}
//var text = Text(name: "Hello World!")
//if let mytext = text{
//    print(mytext.name)
//}
//let text2 = Text(name: "")
//if text2 == nil{
//    print("no")
//}
//text = nil

//enum TemperatureUnit{
//    case kelvin,clesius, fahreheit
//    init?(symbol: Character) {
//        switch symbol {
//        case "K":
//            self = .kelvin
//        case "C":
//            self = .clesius
//        case "F":
//            self = .fahreheit
//        default:
//            return nil
//        }
//    }
//}
//let first = TemperatureUnit(symbol: "K")
//if first != nil{
//    print(first!)
//}
//let second = TemperatureUnit(symbol: "S")
//if second == nil{
//    print("NO")
//}

//enum TemperatureUnit: Character{
//    case kelvin = "K",clesius = "C",fahreheit = "F"
//}
//let first = TemperatureUnit(rawValue: "K")
//if first != nil{
//    print(first!)
//}
//let second = TemperatureUnit(rawValue: "S")
//if second == nil{
//    print("No")
//}

//class Person {
//    var name: String
//    var desprition: String{
//        return "My name is \(name)"
//    }
//    init?(name: String) {
//        if name.isEmpty{
//            return nil
//        }
//        self.name = name
//    }
//}
//class Student: Person {
//    var school: String
//    init?(name: String,school: String) {
//        if school.isEmpty {
//            return nil
//        }
//        self.school = school
//        super.init(name: name)
//    }
//    override var desprition: String{
//        return super.desprition + " and school is \(school)"
//    }
//}
//let student = Student(name: "xiaoming", school: "No.1 High School")
//print((student?.desprition)!)
//if let student2 = Student(name: "", school: "yizhong"){
//    print(student2.desprition)
//}
//else{
//    print("NO")
//}
//if let student3 = Student(name: "ihua", school: ""){
//    print(student3.desprition)
//}
//else{
//    print("no")
//}

//class Document {
//    var name: String?
//    init() {
//        
//    }
//    init?(name: String) {
//        if name.isEmpty{
//            return nil
//        }
//        self.name = name
//    }
//}
//class AutomaticallyNamedDocument: Document {
//    override init() {
//        super.init()
//        self.name = "[Untitled]"
//    }
//    override init(name: String) {
//        super.init()
//        if name.isEmpty{
//            self.name = "[Untitled]"
//        }
//        else{
//            self.name = name
//        }
//    }
//}
//let test = AutomaticallyNamedDocument(name: "")
//print(test.name!)
//class Test: Document{
//    override init() {
//        super.init(name: "[Untitled]")!
//    }
//}
//let test2 = Test()
//print(test2.name!)
