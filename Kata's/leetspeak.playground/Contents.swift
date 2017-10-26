//: Playground - noun: a place where people can play

//import UIKit
//
//
//func toLeetSpeak(_ s: String) -> String {
//    var leetSpeak: String = ""
//    
//    
//    
//    
//    var leetAlphabet: Dictionary<Character, Character> = ["A" : "@","B" : "8","C" : "(","D" : "D","E" : "3","F" : "F","G" : "6","H" : "#","I" : "!","J" : "J","K" : "K","L" : "1","M" : "M","N" : "N","O" : "0","P" : "P","Q" : "Q","R" : "R","S" : "$","T" : "7","U" : "U","V" : "V","W" : "W","X" : "X","Y" : "Y","Z" : "2"]
//    
//    for letter in s.characters{
//        if let test = leetAlphabet[letter]{
//            leetSpeak.append(test)
//        } else {
//            leetSpeak.append(letter)
//        }
//    }
//
//    
//    return leetSpeak
//    
//    
//    
//    
//}
//toLeetSpeak("LEET")
//
//var  a = h    var leetSpeak: String = ""
//
//
//
//
//var leetAlphabet: Dictionary<Character, Character> = ["A" : "@","B" : "8","C" : "(","D" : "D","E" : "3","F" : "F","G" : "6","H" : "#","I" : "!","J" : "J","K" : "K","L" : "1","M" : "M","N" : "N","O" : "0","P" : "P","Q" : "Q","R" : "R","S" : "$","T" : "7","U" : "U","V" : "V","W" : "W","X" : "X","Y" : "Y","Z" : "2"]
//
//for letter in s.characters{
//    if let test = leetAlphabet[letter]{
//        leetSpeak.append(test)
//    } else {
//        leetSpeak.append(letter)
//    }
//}
//
//
//return leetSpeak
//
//
var leetSpeak: String = ""




var leetAlphabet: Dictionary<Character, Character> = ["A" : "@","B" : "8","C" : "(","D" : "D","E" : "3","F" : "F","G" : "6","H" : "#","I" : "!","J" : "J","K" : "K","L" : "1","M" : "M","N" : "N","O" : "0","P" : "P","Q" : "Q","R" : "R","S" : "$","T" : "7","U" : "U","V" : "V","W" : "W","X" : "X","Y" : "Y","Z" : "2"]

for letter in s.characters{
    if let test = leetAlphabet[letter]{
        leetSpeak.append(test)
    } else {
        leetSpeak.append(letter)
    }
}


return leetSpeak

//
//let hoursADay = 7
//let dayAWeek = 7
//let weeksAMonth = 4
//let month = 3
//var sum = hoursADay * dayAWeek * weeksAMonth * month
//print(sum)



    
