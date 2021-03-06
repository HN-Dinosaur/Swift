//
//  Weather.swift
//  Weather
//
//  Created by LongDengYu on 2021/3/25.
//

import Foundation

class Weather{
    var city: String = ""
    var temp: Int = 0
    var conditionId: Int = 0
    
    var desription: String{
        return "\(city) + \(temp) + \(conditionId)"
    }
    var icon: String{
        switch (conditionId) {
        case 0...300:
            return "tstorm1"
        case 301...500:
            return "light_rain"
        case 501...600:
            return "shower3"
        case 601...700:
            return "snow4"
        case 701...771:
            return "fog"
        case 772...799:
            return "tstorm3"
        case 800:
            return "sunny"
        case 801...804:
            return "cloudy2"
        case 900...903, 905...1000:
            return "tstorm3"
        case 903:
            return "snow5"
        case 904:
            return "sunny"
        default:
         return "dunno"
        }
    }
}
