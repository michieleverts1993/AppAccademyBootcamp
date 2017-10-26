//: Playground - noun: a place where people can play

import UIKit

////disemvowel thingie
//
//var sentence = "how are you"
//var disemVoweledWord = ""
//for letter in sentence.characters {
//    switch letter {
//    case "a","A","e","E","i","I","o","u","U":
//        break
//    default:
//        disemVoweledWord.append(letter)
//    }
//    print(disemVoweledWord)
//
//}

//func isEven(number num: Int) -> Int {
//    if number % 2 {
//        return true
//    } else {
//        return false
//    }
//}

//func isThisodd(_ num: Int) -> Bool {
//    if num % 2 == 0 {
//        return false
//    } else {
//        return true
//    }
//    
//}

var days = [2,2,2,2,2,5,5]
var total: Int = 90
for currentNumber in days {
    total = total - currentNumber
    if total > 0{
        
       
    }
     print(total)
}

while(total > 0) {
    total = total - 10
    print(total)

}
