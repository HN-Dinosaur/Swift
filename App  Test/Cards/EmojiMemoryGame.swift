//
//  EmojiMemoryGame.swift
//  Day01-1
//
//  Created by LongDengYu on 2021/3/2.
//

import Foundation

class EmojiMemoryGame: ObservableObject{
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.creatMemoryGame()
    
    private static func creatMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: -Access to Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: Intent(s)
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    //new cards new Game
    func newGame(){
        self.model = EmojiMemoryGame.creatMemoryGame()
    }
}
