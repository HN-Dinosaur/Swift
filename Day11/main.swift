//
//  main.swift
//  Day12
//
//  Created by LongDengYu on 2021/2/16.
//

import Foundation
extension Int{
    func repetition(task: ()->Void) {
        for _ in 0..<self{
            task()
        }
    }
}
//3.repetition {
//    print("Hello")
//}
func sum(_ firstNumber: Int,_ secondNumber: Int)->Int{
    print("Function begin!")
    return firstNumber + secondNumber
}
4.repetition {
    let result = sum(1, 5)
    print(result)
}
//我觉得上述repetition函数的参数应该是call处的a pair of brace中的内容
