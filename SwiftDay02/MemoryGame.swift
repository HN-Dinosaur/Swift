//
//  MemoryGame.swift
//  Day01-1
//
//  Created by LongDengYu on 2021/3/2.
//

import Foundation


struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    mutating func choose(card: Card){
        print("card chosen: \(card)")
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
    }
    func index(of card: Card) -> Int {
        for index in 0..<cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return -1 // TODO: bogus!
    }
    struct Card : Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
