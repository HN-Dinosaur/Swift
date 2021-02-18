//
//  main.swift
//  Day13
//
//  Created by LongDengYu on 2021/2/17.
//

import Foundation

enum VendingMachineError: Error{
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}
struct Item {
    var price: Int
    var count: Int
}

class VendingMachine{
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 10
    func vend(itemName name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing\(name)")
    }

}
let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "pretzels"
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine)throws{
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemName: snackName)
}
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 7
//do{
//    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
//    print("Success! Yum")
//} catch VendingMachineError.invalidSelection{
//    print("Invalid Selection")
//} catch VendingMachineError.outOfStock{
//    print("OutOfStock")
//} catch VendingMachineError.insufficientFunds(coinsNeeded: let coinsNeeded){
//    print("Insufficient funds. please insert an additial \(coinsNeeded) coins.")
//} catch {
//    print("Unexpected error\(error)")
//}
func nourish(with item: String) throws {
    do{
        try vendingMachine.vend(itemName: item)
    } catch is VendingMachineError{
        print("Coundn't buy that from the vending machine")
    }
}
do{
    try nourish(with: "Beet-Flavored Chips")
} catch{
    print("Unexpected non-vending-machine-related error: \(error)")
}
