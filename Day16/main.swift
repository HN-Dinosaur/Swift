//
//  main.swift
//  Day18
//
//  Created by LongDengYu on 2021/2/27.
//

import Foundation

class Department{
    var name: String
    var courses: [Course]
    init(name: String) {
        self.name = name
        self.courses = []
    }
    deinit {
        print("\(name) department has been deinit!")
    }
}
class Course{
    var name: String
    unowned var department: Department
    unowned var nextCourse: Course?
    init(name: String, department: Department) {
        self.name = name
        self.department = department
        self.nextCourse = nil
    }
    deinit {
        print("\(name) course has been deinit!")
    }
}
let department = Department(name: "Horticulture")
let intro = Course(name: "Survery of Plants", department: department)
let intermediate = Course(name: "Growing Common Herbs", department: department)
let advanced = Course(name: "Caring for TropicalPlants", department: department)


intro.nextCourse = intermediate
intermediate.nextCourse = advanced
department.courses = [intro,intermediate,advanced]
department.courses.removeAll()


class HTMLElement{
    let name: String
    let text: String?
    lazy var asHTML: ()->String = {
        [unowned self] in
        if let text = self.text{
            return "<\(self.name)>\(text)</\(self.name)>"
        }
        else{
            return "<\(self.name)/>"
        }
    }
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())
paragraph = nil
