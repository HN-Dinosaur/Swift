//
//  main.swift
//  Swift-Day02
//
//  Created by LongDengYu on 2021/2/4.
//

import Foundation


let name = "LongDengYu"
for index in name.indices{
    print("\(name[index]) ",terminator: "")
}

print()
print(name[name.startIndex])
let c: [Character] = ["h","e","l","l","o"]
let k = String(c)
print(k)


var welcome = "hello"
welcome.append("!")
print(welcome)
