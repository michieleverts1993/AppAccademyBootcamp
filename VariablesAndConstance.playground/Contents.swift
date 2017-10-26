//: Playground - noun: a place where people can play

import UIKit

// declaring a variable type: string
var schoolName: String

// declaring and initialising a variable of type string
var name = "michiel"

//declaring and initialising a variable of type double
var age = 24.10

schoolName = "App Academy"


// printing varaibele ( eigenlijk runt het dan gewoon in playground)
print(schoolName)

// combineer print variabele
print(age, name)


print("the teacher is \(name) and he is \(age) and het works at \(schoolName)")
// this is called string interpelation


var DayInTheWeek = 7
var HoursInTheDay = 24
var MinutesInHour = 60

// var = variable or let = constance
// Like let DayInTheWeek = 7


//how many minutes in a week?

print( DayInTheWeek * HoursInTheDay * MinutesInHour)

//modulus lets you figure out the remainder === %
// * multiply
// / divide
// + plus
// - min

var modulus = 10 % 3

print(modulus)
print(24/3)
print(24-3)
print(24+3)

// auto-increment gebruikt door += betekent eigenlijk finalScore = finaleScore + 10
var finalScore = 1
finalScore += 10
print (finalScore)
// kan ook met - (auto-decrement) -=

// parenthesis" () brackets

// var met nummer types double, float, interture

// different types of numbers ( gaat hierom hoe accuraat de nummers moeten worden aangegeven. op hoeveel decimalen)
var floatNumber = Float64.self
var doubleNumber = Double.self
var number: Float80 = 342234234234234234234234234543543458823237832328327239327932747279494892389397327783329892383272377248923893298238938327939328382978478238437832732783232783423873247823499238478922734329784329832493247324978

print(number)
// double en float of inter kunnen niet met elkaar worden berekend (geen =, -, *, /) behalve als je het erachter zet bv: age = int doublenumber + age kan wel 
// niet number = age




















