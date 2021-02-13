//
//  main.swift
//  Subscipts
//
//  Created by LongDengYu on 2021/2/13.
//

import Foundation
//struct TimesTable {
//    let multiplier: Int
//    subscript(index: Int)->Int{
//        get{
//            return multiplier * index
//        }
//        set{
//            print(newValue)
//        }
//    }
//}
//var threeTimesTable = TimesTable(multiplier: 3)
//print(threeTimesTable[6])
//threeTimesTable[12] = 18


//var dict = ["name":6, "age": 18]
//print(dict)
//dict["age"] = nil
//print(dict)
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(row: Int, column: Int) {
        rows = row
        columns = column
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func isInvalid(row: Int, column: Int)->Bool{
        if row >= 0 && row < rows && column >= 0 && column < columns {
            return true
        }
        return false
    }
    subscript(row: Int, column: Int)->Double{
        get{
            assert(isInvalid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set{
            assert(isInvalid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
var myMatrix = Matrix(row: 3, column: 3)
myMatrix[2,2] = 5.0
myMatrix[0,0] = 1.0
print(myMatrix[2,2])
print(myMatrix[0,0])
