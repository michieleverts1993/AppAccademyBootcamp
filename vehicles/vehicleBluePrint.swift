//
//  vehicleBluePrint.swift
//  vehicles
//
//  Created by Michiel Everts on 05-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation


enum vehicleType {
    case car
    case sportsCar
    case muscleCar
}
//polymorphism - one principle oop - object orientative programming
// inheritance - being able to inherit all the properties and functions of a super class type
//encapsulation
//abstraction
class vehicleBluePrint {
    var maxSpeed: Double
    var weight: Double
    var colour: String
    var type: vehicleType
    var lights: Bool?
    var currentSpeed: Double
    
    init(maxSpeed:Double,weight:Double,colour: String, type: vehicleType, currentSpeed: Double) {
        self.maxSpeed = maxSpeed
        self.weight = weight
        self.colour = colour
        self.type = type
        self.currentSpeed = currentSpeed
        print("heya mate")
    }
    
    
    func accelerate() -> Double{
        while currentSpeed < maxSpeed{
            if currentSpeed == currentSpeed + 20 {
        } else {
            print(self.maxSpeed)
        }
    }
        return currentSpeed
}
}
