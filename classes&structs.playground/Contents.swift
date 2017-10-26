//: Playground - noun: a place where people can play

import UIKit

var num1 = 0





struct Wallet {
    var balance: Int
    init (balance: Int){
        self.balance = balance
    }
}

struct Account {
    var balance: Int
    init (balance: Int){
        self.balance = balance
    }
    
}

class Person {
    var acc: Account
    init(acc: Account) {
        self.acc = acc
    }
    
}

var sharedAccount = Account.init(balance: 1000)
var person1 = person.init(acc: sharedAccount)
var person2 = person.init(acc: sharedAccount)

person1.acc.balance

print(person2)
