//
//  main.swift
//  Day08
//
//  Created by LongDengYu on 2021/2/10.
//

import Foundation

//struct Location {
//    var location = ""
//}
//class Plant{
//    var plant = ""
//}
//var myLocation = Location()
//myLocation.location = "hainan"
//var myPlant = Plant()
//myPlant.plant = "earth"
//print(myLocation.location)
//print(myPlant.plant)

//class DataImporter{
//    var filename = "data.txt"
//}
//class DataManager{
//    lazy var importer = DataImporter()
//    var data = [String]()
//}
//let manager = DataManager()
//manager.data.append("hello")
//manager.data.append(" World")
//print(manager.data)

//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct  Rect {
//    var origin = Point()
//    var size = Size()
//    var Center: Point{
//        get{
//            return Point(x: origin.x + (size.width / 2), y: origin.y + (size.height / 2))
//        }
//        set(newCenter){
//            origin.x = newCenter.x - (size.width / 2)
//            origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
//let initialSquareCenter = square.Center
//square.Center = Point(x: 15.0, y: 15.0)
//print("originCenter: \(initialSquareCenter.x)---\(initialSquareCenter.y)")
//print("newCenter:\(square.Center.x)---\(square.Center.y)")
//print("newOrigin: \(square.origin.x)--\(square.origin.y)")

//struct Name {
//    var locationalName = ""
//    var name: String{
//        get{
//            return locationalName
//        }
//        set{
//            locationalName = newValue
//        }
//    }
//}
//var myName = Name()
//myName.name = "LongDengYu"
//print(myName.name)

//struct multiple {
//    var width = 0.0, height = 0.0, depth = 0.0
//    var volumn: Double{
//        return width * height * depth
//    }
//}
//var twoByThreeByFive = multiple(width: 2, height: 3, depth: 5)
//print(twoByThreeByFive.volumn)

//class stepCounter {
//    var step: Int = 0{
//        willSet{
//            print("NowSteps\(newValue)")
//        }
//        didSet{
//            if(step - oldValue >= 0){
//                print("Added \(step - oldValue)")
//            }
//        }
//    }
//}
//let myStep = stepCounter()
//myStep.step = 200
//myStep.step = 500

//@propertyWrapper
//struct TwelveOrless {
//    private var number: Int
//    init() {
//        number = 0
//    }
//    var wrappedValue: Int{
//        get{
//            return number
//        }
//        set{
//            number = min(newValue,12)
//        }
//    }
//}

//struct SmallRectangle {
//    @TwelveOrless var height: Int
//    @TwelveOrless var width: Int
//
//
//}
//var rectangle = SmallRectangle()
//print(rectangle.height)
//
//rectangle.height = 10
//print(rectangle.height)
//
//rectangle.height = 24
//print(rectangle.height)

//@propertyWrapper
//class Age {
//    private var age: Int
//    init() {
//        age = 0
//    }
//    var wrappedValue: Int{
//        get{
//            return age
//        }
//        set{
//            age = min(newValue,18)
//        }
//    }
//}
//class WomanAge{
//    @Age var age: Int
//}
//let girl = WomanAge()
//print(girl.age)
//
//girl.age = 10
//print(girl.age)
//
//girl.age = 50
//print(girl.age)

//struct SmallRectanle {
//    private var _height = TwelveOrless()
//    private var _width = TwelveOrless()
//
//    var height: Int{
//        get{
//            return _height.wrappedValue
//        }
//        set{
//            _height.wrappedValue = newValue
//        }
//    }
//    var width: Int{
//        get{
//            return _width.wrappedValue
//        }
//        set{
//            _width.wrappedValue = newValue
//        }
//    }
//}
//var rectangle = SmallRectanle()
//print(rectangle.height)
//
//rectangle.height = 10
//print(rectangle.height)
//
//rectangle.height = 50
//print(rectangle.height)
//@propertyWrapper
//struct SmallNumber {
//    private var maxinum: Int
//    private var number: Int
//
//    var wrappedValue: Int{
//        get{
//            return number
//        }
//        set{
//            number = min(newValue, maxinum)
//        }
//    }
//    init() {
//        maxinum = 12
//        number = 0
//    }
//    init(wrappedValue: Int) {
//        maxinum = 12
//        number = min(wrappedValue, maxinum)
//    }
//    init(wrappedValue: Int,maxinum: Int) {
//        self.maxinum = maxinum
//        number = min(wrappedValue, maxinum)
//    }
//}
//
//struct ZeroRectanle {
//    @SmallNumber(wrappedValue: 3, maxinum: 5) var height: Int
//    @SmallNumber(wrappedValue: 4, maxinum: 6) var width: Int
//}
//var zeroRectangle = ZeroRectanle()
//print("\(zeroRectangle.height)--\(zeroRectangle.width)")


