//
//  Array + Identifiable.swift
//  Day01-1
//
//  Created by LongDengYu on 2021/3/9.
//

import Foundation

extension Array where Element: Identifiable{
    func firstIndex(of mathing: Element) -> Int? {
        for index in 0..<self.count{
            if self[index].id == mathing.id{
                return index
            }
        }
        return nil
    }
}
