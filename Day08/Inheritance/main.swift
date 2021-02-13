//
//  main.swift
//  Inheritance
//
//  Created by LongDengYu on 2021/2/13.
//

import Foundation

class Vehicle{
    var speed: Int = 0
    var description: String{
        return "Triaveling at \(speed) miles an hours"
    }
    func makeNoise(){
        
    }
  
}
//let myCar = Vehicle()
//myCar.speed = 60
//print(myCar.description)
//
//class Bicycle: Vehicle {
//    var basket: Bool = false
//}
//let myBicycle = Bicycle()
//myBicycle.speed = 40
//print(myBicycle.description)
//myBicycle.basket = true
//print(myBicycle.basket)
//
//class Tandem: Bicycle {
//    var currentNumberOfPassengers = 0
//}
//let myTandem = Tandem()
//myTandem.currentNumberOfPassengers = 2
//print(myTandem.currentNumberOfPassengers)

class Train: Vehicle {
    override func makeNoise() {
        print("wu!pupuupupu")
    }
}
let myTrain = Train()
myTrain.makeNoise()
class Car: Vehicle{
    var gear = 0
    override var description: String{
        return super.description + "in gear \(gear)"
    }
}
let myCar = Car()
myCar.gear = 2
print(myCar.description)
class autoMaticCar: Vehicle{
    override var speed: Int{
        didSet{
            if  speed > oldValue {
                print("差这么多\(speed - oldValue)")
            }
            
        }
    }
}
let myAutoMaticCar = autoMaticCar()
myAutoMaticCar.speed = 80
