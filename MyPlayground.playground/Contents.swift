//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//example of boolean
var IsItRaining: Bool = true

// example if statement is checked boolean
if IsItRaining {
    print("wear a rain jacket")
} else {
    print ("enjoy your sunnny day")
}

// example or less or more then \ or equals <=
var population: Int = 10000
var message: String

if population <= 10000 {
    message = "\(population) is a small town"
} else {
    message = "\(population) is pretty big"
}

// makkelijker en cleanere versie ( ternary operator) is het zelfde als hierboven

message = population < 10000 ? "\(population) is a small town" : "\(population) is pretty big"

print(message)

//switch
var statusCode: Int = 403
var errorString: String
switch statusCode {
case 400:
    errorString = "bad reqeust"
case 401:
    errorString = "not found"
case 402:
    errorString = "suck it"
case 403:
    errorString = "still nope"
case 404:
    errorString = "sucks to be you"

default:
    errorString = "not known"
    
}
print(errorString)

switch statusCode {
case 400...499:
    errorString = "still cant get in"
default:
    errorString = "Not known"
}
print(errorString)

enum CompassPoints:{

    case North
    case South
    case East
    case West
}

var direction: CompassPoints = CompassPoints.North
var messageDirection = String

switch direction {
case .North:
    messageDirection = "go north"
case .South:
    messageDirection = "go south "
case .East:
    messageDirection = "go east"
case .West:
    messageDirection = "go west"

print(messageDirection)

    var passcode: Int = 1000
    var message = passcode == 1000 ? "unlocked" : "failed"


