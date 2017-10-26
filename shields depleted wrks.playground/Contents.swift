//: Playground - noun: a place where people can play

import UIKit

var Health = 5
var shieldoverHeating = false
var shieldEnergyCount = 0
while Health > 0 {
    if shieldoverHeating {
        print("dead")
        sleep(10)
        print("Respawned")
        sleep(5)
        shieldoverHeating = false
        shieldEnergyCount = 0
    }
    if shieldEnergyCount > 100 {
        shieldoverHeating = true
        continue
    }
    print("you got hit")
    shieldEnergyCount += 1
}
