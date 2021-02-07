//
//  main.swift
//  Day05
//
//  Created by LongDengYu on 2021/2/7.
//

import Foundation

func test01(){
    let names = ["chaming","ming","alex","box","elephant"]
    func backward(_ s1: String,_ s2: String)->Bool{
        return s1 > s2
    }
    let reversed = names.sorted(by: backward)
    print(reversed)
    print(names)
}
func test02(){
    let names = ["chaming","ming","alex","box","elephant"]
    let reversed = names.sorted(by: {(s1: String,s2: String)->Bool in return s1 > s2})
    print(reversed)
}
func test03(){
    let names = ["chaming","ming","alex","box","elephant"]
    let reversed = names.sorted(by: {s1,s2 in return s1 > s2})
    print(reversed)
}
func test04(){
    let names = ["chaming","ming","alex","box","elephant"]
    let reversed = names.sorted {$0 > $1}
    print(reversed)
}
test04()
