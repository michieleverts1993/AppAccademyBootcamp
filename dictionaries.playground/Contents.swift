//: Playground - noun: a place where people can play

import UIKit
import Foundation


//var movieRatings = ["top gun" : 1 , "Star Wars" : 10 , "Indiana Jones" : 10]
//movieRatings ["top gun"] = 5
//
//
//for(key, value) in movieRatings {
//    print(key)
//    print(value)
//}
//
//enum Dictionary
//    case dutch
//    case english
//    case german

var dutchDictionary: Dictionary<String, String> = ["some books" : "are really good"]
var englishDictionary: Dictionary<String, String> = ["books" : "are intellect"]
var germanDictionary: Dictionary<String , String> = ["these books" : "are great"]

var ArrayDictionary = [dutchDictionary , englishDictionary , germanDictionary]

for currentDictionary in ArrayDictionary {
    print(currentDictionary)
    
    if currentDictionary == englishDictionary {
        print(currentDictionary["books"])
        
    } else if currentDictionary == dutchDictionary {
        print(currentDictionary["some books"])
    } else {
        
    }
}

var movieRatings: Dictionary<String,Int> = ["despicable me" : 10 , "top gun" : 5]
movieRatings ["despicable me"] = 9


















