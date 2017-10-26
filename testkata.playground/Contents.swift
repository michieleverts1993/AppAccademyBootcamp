//: Playground - noun: a place where people can play

import UIKit



func roman(_ textR:String) -> Int {
    var test: [Int] = []
    
    var romanNumerals: Dictionary<String, Int> = ["I":1,"II":2,"III":3, "IV":4, "V":5,"VI":6, "VII":7, "VIII":8,"IX":9,"X":10,"L":50, "C":100,"M":1000]
    
    for letter in textR.characters {
        if let text = romanNumerals[String(letter)]{
            test.append(text)
        }
    }
    return 0
    
    
    
    
    
    
    
    
}