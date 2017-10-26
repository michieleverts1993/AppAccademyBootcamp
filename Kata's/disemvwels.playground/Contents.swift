//: Playground - noun: a place where people can play

import UIKit

//func disemvowel(s: [String]) -> String {
//    var sentence = "this website is for losers"
//    var vowels:  = ["a", "e", "u", "o", "i"]
//    var withoutTroll = ""
//    
//    
//    
//    for letter in vowels {
//        if s.contains(vowels){
//        
//    }
//    
//    
//    
//    
//    
//    
//    return withoutTroll
//    
//    
//}
//print(disemvowel(s:["sentence"]))
//
//}
func disemvowel(text: String) -> String {
    return text.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}
print(disemvowel(text:"heey"))
// zo roep je een fun op a.k.a print het uit

