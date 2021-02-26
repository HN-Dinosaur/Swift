//
//  main.swift
//  protocol
//
//  Created by LongDengYu on 2021/2/26.
//

import Foundation


struct Vector3D: Equatable {
    var x = 0.0, y = 0.0, z = 0.0
}
//var first = Vector3D(x: 1.0, y: 2.0, z: 3.0)
//var second = Vector3D(x: 2.0, y: 3.0, z: 4.0)
//if first == second {
//    print("Yes!")
//}
//else{
//    print("No!")
//}
enum SkillLevel: Comparable{
    case beginner
    case intermediate
    case expert(stars: Int)
}
//var levels = [SkillLevel.intermediate, SkillLevel.beginner, SkillLevel.expert(stars: 5), SkillLevel.expert(stars: 3)]
//for level in levels.sorted(){
//    print(level)
//}
protocol TextRepresentable {
    var textualDescription: String{get}
}
struct Hamster {
    var name: String
    var textualDescription: String{
        return "A hamster named \(name)"
    }
}
extension Hamster: TextRepresentable {}
//let simon = Hamster(name: "Simon")
//let some: TextRepresentable = simon
//print(some.textualDescription)
protocol PrettyText: TextRepresentable {
    var prettyText: String{get}
}
extension Hamster: PrettyText{
    var prettyText: String {
       return name
    }
}
protocol Name {
    var name: String{set get}
}
protocol Age {
    var age: Int{set get}
}
struct Person: Age, Name {
    var age: Int
    
    var name: String
}
func happyBirthday(to celebrator: Name & Age){
    print("Happy Birthday to \(celebrator.name), you are \(celebrator.age)")
}
let me = Person(age: 19, name: "Long")
//happyBirthday(to: me)


class Location{
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}
//class City: Location, Name{
//    var name: String
//}
//func welcome(to people: Location & Name){
//    print("Welcome to \(people.latitude)")
//}
//let test = City(
//
protocol test1 {
    var test11: String{get}
}
protocol test2: test1 {
    var test22: String{get}
    
}
