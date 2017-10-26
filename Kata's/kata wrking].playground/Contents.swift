//: Playground - noun: a place where people can play

import UIKit

func toNato(_ words: String) -> String {
    //appending a string
    //    var StringToConvert = "heey"
    var emptyTest: String = ""
    
    
    
    //Dictionary with key as? type character, value as? type String
    var pilotAlphabet: Dictionary<Character, String> = ["a": "Alfa", "b": "Bravo", "c" :                            "Charlie", "d" : "Delta",
                                                        "e": "Echo", "f": "Foxtrot", "g": "Golf", "h": "Hotel",
                                                        "i": "India", "j": "Juliet", "k": "Kilo", "l": "Lima",
                                                        "m": "Mike", "n": "November", "o": "Oscar", "p": "Papa",
                                                        "q": "Quebec", "r": "Romeo", "s": "Sierra", "t": "Tango",
                                                        "u": "Uniform", "v": "Victor", "w": "Whiskey", "x": "Xray",
                                                        "y": "Yankee", "z": "Zulu"]
    var wordsLowerCase = words.lowercased()
    // for loop to loop through every character in our string that we want to convert
    for letter in wordsLowerCase.characters {
        
        //    optional beinding, checking that we can get a value from our dictionary with the key "letter", wich is the current character in the string we are looping through
        
        if let test = pilotAlphabet[letter]{
            
            //      then append the emptyTest to return our string with the retrieved value from our dictionary
            emptyTest.append(test)
            emptyTest.append(" ")
        } else {
            emptyTest.append(letter)
        }
    }
    

    return delConsecSpaces(words: emptyTest)
    
    emptyTest(heey)
}

func delConsecSpaces(words: String) -> String{
    let components = words.components(separatedBy: .whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}

