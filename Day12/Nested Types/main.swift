//
//  main.swift
//  Nested Types
//
//  Created by LongDengYu on 2021/2/18.
//

import Foundation


struct Blackjackcard {
    enum Suit: Character{
        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
    }
    enum Rank: Int{
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack,queen,king,ace
        struct Values {
            let first: Int, Second: Int?
        }
        var value: Values{
            switch self {
            case .ace:
                return Values(first: 1, Second: 11)
            case .jack,.queen,.king:
                return Values(first: 10, Second: nil)
            default:
                return Values(first: self.rawValue, Second: nil)
            }
        }
    }
    let rank: Rank, suit: Suit
    var description: String{
        var output = "suit is \(suit.rawValue) "
        output += "value is \(rank.value.first) "
        if let second = rank.value.Second{
            output += "or \(second)"
        }
        return output
    }
}

let black = Blackjackcard(rank: .king, suit: .spades)
print(black.description)
print(Blackjackcard.Suit.hearts.rawValue)
