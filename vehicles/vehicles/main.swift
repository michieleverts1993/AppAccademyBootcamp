//
//  main.swift
//  vehicles
//
//  Created by Michiel Everts on 05-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation


// init of a vehice
var camero = vehicleBluePrint.init(maxSpeed: 600, weight: 300.50, colour: "black", type: .muscleCar, currentSpeed: 0)

print(camero.maxSpeed)
print(camero.weight)
print(camero.colour)
print(camero.type)


//another init of vehicle
var austinMartin = vehicleBluePrint.init(maxSpeed: 300, weight: 200, colour: "white", type: .sportsCar, currentSpeed: 200)

print(austinMartin.maxSpeed, austinMartin.weight, austinMartin.colour, austinMartin.type)

//camero and austinMartin are different instances of vehicle objects


////calling function in class
//camero.switchLights(on: treu)
//
//if let lightState = camero.lights{
//    if lightState{
//        print("lights on")
//    }
//    } else {
//        print("lights off")
//}
