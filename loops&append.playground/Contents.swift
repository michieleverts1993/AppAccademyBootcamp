//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//loops with just lone numbers  ( basic for loop)

var myFirstInt: Int = 0

for i in 1...5 {
    myFirstInt += 5
    myFirstInt -= 3
    print(myFirstInt)
}

//array, a collection of variables of the SAME TYPE
enum Stones {
    case Red
    case Blue
    case Green
    case Purple
}

//looping an Array
var Inventory: [Stones]
Inventory = [.Red , .Green , .Blue , .Purple , .Blue , .Green , .Purple]
for Item in Inventory {
    print(Item)
}



// different array types
var names: [String] = []
var plants: [String]

//Appending
names.append("ben")

for name in names {
    print(name)

}
//dingen weg halen in een loop
names.append("ben")
names.append("Michiel")
names.append("Trym")
names.append("Bart")
// the remove part skips 2 or when 0 its makes the next 1 now 0
names.remove(at: 0)

names[0] = "Tim"

for (index, name) in names.enumerated() {
    print("\(index): \(name)")
    
}
// love this, but looping and functions
var shields = 5
var blastersoverheating = false
var blasterFireCount = 0
while shields > 0 {
    if blastersoverheating {
        print("Blasters are overheated!cooldown initiated.")
        sleep(5)
        print("blasters are ready to fire")
        sleep(1)
        blastersoverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount > 100 {
        blastersoverheating = true
        continue
    }
    //fire blasters!
    print("fire blasters")
    blasterFireCount += 1
}
//
//var shield = 5
//var shieldsoverheating = true
//var shieldFireCount = 0
//    while shield > 5 {
//    if shieldsoverheating {
//        print("you are dead")
//        sleep(25)
//        print("respawnd")
//        shield = 5
//        sleep(1)
//        shieldsoverheating = true
//        shieldFireCount = 5
//        
//    }
//    shieldsoverheating = false
//   
//    
//    
//}
//print("shield depleting")
//shieldFireCount -= 1




