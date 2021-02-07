//
//  main.swift
//  Day06
//
//  Created by LongDengYu on 2021/2/7.
//

import Foundation

enum Plant: Int{
    case Earth = 0,Mar
}
let livePlant = Plant.Earth
switch livePlant{
case .Earth:
    print("Earth")
default:
    print("other plant")
}
