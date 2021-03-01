//
//  main.swift
//  Day20-2
//
//  Created by LongDengYu on 2021/3/1.
//

import Foundation

protocol Shape{
    func draw()-> String
}
struct Triangle: Shape {
    var size: Int
    func draw() -> String {
        var result = [String]()
        for length in 1...size{
            result.append(String(repeating: "*", count: length))
        }
        return result.joined(separator: "\n")
    }
}
let smallTriangle = Triangle(size: 3)
//print(smallTriangle.draw())
struct FlippedShape<T: Shape>: Shape{
    var shape: T
    func draw() -> String {
        if shape is Square{
            return shape.draw()
        }
        let lines = shape.draw().split(separator: "\n")
//        print(lines)
        return lines.reversed().joined(separator: "\n")
    }
}
let flippedTriangle = FlippedShape(shape: smallTriangle)
//print(flippedTriangle.draw())
struct JoinedShape<T: Shape, U: Shape>: Shape {
    var Top: T
    var Bottom: U
    func draw() -> String {
        return Top.draw() + "\n" + Bottom.draw()
    }
}
let joinedShape = JoinedShape(Top: smallTriangle, Bottom: flippedTriangle)
//print(joinedShape.draw())
struct Square: Shape {
    var size: Int
    func draw() -> String {
        let line = String(repeating: "*", count: size)
        let result = Array<String>(repeating: line, count: size)
        return result.joined(separator: "\n")
    }
}

func makeTrapezoid() -> some Shape{
    let top = Triangle(size: 2)
    let middle = Square(size: 2)
    let bottom = FlippedShape(shape: top)
    let trapezoid = JoinedShape(Top: top, Bottom: JoinedShape(Top: middle, Bottom: bottom))
    return trapezoid
}
let trapezoid = makeTrapezoid()
//print(trapezoid.draw())
func flip<T: Shape>(_ shape: T) -> some Shape{
    return FlippedShape(shape: shape)
}
func join<T: Shape, U: Shape>(_ top: T, _ bottom: U) -> some Shape{
    return JoinedShape(Top: top, Bottom: bottom)
}
let opaqueJoinedTriangles = join(smallTriangle, flip(smallTriangle))
//print(opaqueJoinedTriangles.draw())

//func invalid<T: Shape>(_ shape: T) -> some Shape{
//    if shape is Square{
//        return shape
//    }
//    return FlippedShape(shape: shape)
//}
func protoFlip1<T: Shape>(_ shape: T) -> Shape{
    return FlippedShape(shape: shape)
}
func protoFlip2<T: Shape>(_ shape: T) -> Shape{
    if shape is Square{
        return shape
    }
    return FlippedShape(shape: shape)
}
let protoFlippedTriangle = protoFlip2(smallTriangle)
let samething = protoFlip2(smallTriangle)
//samething == protoFlippedTriangle
