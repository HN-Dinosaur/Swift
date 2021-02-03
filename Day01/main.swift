//
//  main.swift
//  First_Swift
//
//  Created by LongDengYu on 2021/2/2.
//

import Foundation
//想指定类型的话var i：Double = 10
var j: Int? = nil
var c = j ?? 20


if let b = j {
    print(c)
}
print(c)
//没有隐式类型转换
//option + click 判断类型   只管右边

print("Hello, World!")
var name: String? = "大千世界"
for i in name! {
    print(i)
}
name = "k"


switch name {
    case "k":
        
        print("k")
    case "b":
        print("b")
    case "c":
        print("c")
    default:
        print("default")
}

