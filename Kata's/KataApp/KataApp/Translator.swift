//
//  TranslatorViewController.swift
//  KataApp
//
//  Created by Michiel Everts on 10-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class Translator {

    func toLeetSpeak(textLeet: String) -> String {
        var text: String = ""
        
        var leetAlphabet: Dictionary<Character, Character> = ["A" : "@","B" : "8","C" : "(","D" : "D","E" : "3","F" : "F","G" : "6","H" : "#","I" : "!","J" : "J","K" : "K","L" : "1","M" : "M","N" : "N","O" : "0","P" : "P","Q" : "Q","R" : "R","S" : "$","T" : "7","U" : "U","V" : "V","W" : "W","X" : "X","Y" : "Y","Z" : "2"]
        
        for letter in textLeet.uppercased().characters{
            if let test = leetAlphabet[letter]{
                text.append(test)
            } else {
                text.append(letter)
            }
        }
        
        return text
    }
//    print(toLeetSpeak(text:"heey"))
    
    func disemvowel(textDis: String) -> String {
        return textDis.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
    }
//    print(disemvowel(text:"heey"))

    func toNato(textNato: String) -> String {
        var emptyTest: String = ""
        var pilotAlphabet: Dictionary<Character, String> = ["a": "Alpha", "b": "Bravo", "c" :                            "Charlie", "d" : "Delta",
                                                            "e": "Echo", "f": "Foxtrot", "g": "Gamma", "h": "Hotel",
                                                            "i": "India", "j": "Juliet", "k": "Kilo", "l": "Lima",
                                                            "m": "Mike", "n": "November", "o": "Oscar", "p": "Papa",
                                                            "q": "Quebec", "r": "Romeo", "s": "Sierra", "t": "Tango",
                                                            "u": "Uniform", "v": "Victor", "w": "Whiskey", "x": "Xray",
                                                            "y": "Yankee", "z": "Zulu"]

        for letter in textNato.characters {
            if let test = pilotAlphabet[letter]{
                emptyTest.append(test)
                emptyTest.append(" ")
            } else {
                emptyTest.append(letter)
            }
        }
        return emptyTest
    }
//print(toNato(textNato:"heeeeeey"))
}

class SpecialCalculator {
    
    static func bmi(_ weight: Int, _ height: Double) -> String {
        let bmiResult: Double = Double(weight)/(height*height)
        var returnString = String()
        
        switch bmiResult{
        case _ where bmiResult <= 18.5:
            returnString = "Underweight"
        case _ where bmiResult <= 25.0:
            returnString = "Normal"
        case _ where bmiResult <= 30.0:
            returnString = "Overweight"
        default:
            returnString = "Obese"
        }
        return returnString
    }
    
    
}
    
    


