//
//  main.swift
//  Deinitialization
//
//  Created by LongDengYu on 2021/2/14.
//

import Foundation

class Bank{
    static var coinsInBank = 10000
    static func distribute(coins numberOfCoinsRequested: Int)->Int{
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int){
        coinsInBank += coins
    }
}

class Player{
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}
var aPlayer: Player? = Player(coins: 2000)
print(aPlayer!.coinsInPurse)
print(Bank.coinsInBank)
aPlayer = nil
print(Bank.coinsInBank)
