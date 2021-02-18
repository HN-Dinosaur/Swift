//
//  main.swift
//  Day14
//
//  Created by LongDengYu on 2021/2/18.
//

import Foundation

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Music: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
let library = [
    Movie(name: "1e", director: "1e"),
    Music(name: "2c", artist: "2c"),
    Movie(name: "3e", director: "3e"),
    Music(name: "4c", artist: "4c"),
    Music(name: "5c", artist: "5c")
]
//var movieCount = 0
//var musicCount = 0
//for item in library{
//    if item is Movie{
//        movieCount += 1
//    }
//    if item is Music{
//        musicCount += 1
//    }
//}
//for item in library{
//    if let movie = item as? Movie{
//        print(movie.director + "---" + movie.name)
//    }
//    if let music = item as? Music{
//        print(music.artist + "---" + music.name)
//    }
//}
var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159265857)
things.append("Heollo")
things.append((3.0,5.0))
things.append(Movie(name: "GhostBusters", director: "Ivan Reitman"))
things.append({(name:String) -> String in "Hello , \(name)"})
for thing in things{
    switch thing {
    case 0 as Int:
        print("Zero is Int")
    case 0 as Double:
        print("Zero is Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("an Double value of \(someDouble)")
    case is Double:
        print("It is a Double, but i don't want to print it")
    case let someString as String:
        print("String is: \(someString)")
    case let(x,y) as (Double,Double):
        print("(\(x),\(y))")
    case let movie as Movie:
        print(movie.director + "---" + movie.name)
    case let stringConverter as (String)->String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
        
}
let optianalNumber: Int? = 3
things.append(optianalNumber as Any)
