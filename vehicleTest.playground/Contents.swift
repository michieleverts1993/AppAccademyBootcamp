//: Playground - noun: a place where people can play

import UIKit
import Foundation

//enum vehicleType {
//    case muscleCar
//    case sportsCar
//}
//
//enum stearing {
//    case right
//    case left
//    case forward
//    case park
//}
//
//enum movement {
//    case acceleration
//    case deceleration
//}
//
//class VehicleProperties {
//    var maxSpeed: Double
//    var weight: Double
//    var colour: String
//    var type: vehicleType
//    var currentSpeed: Double
//    var direction: stearing
//    var movement: Bool
//    
//    init(maxSpeed:Double,weight:Double,colour: String, type: vehicleType, currentSpeed: Double, direction: stearing, movement: Bool) {
//       
//        self.maxSpeed = maxSpeed
//        self.weight = weight
//        self.colour = colour
//        self.type = type
//        self.currentSpeed = currentSpeed
//        self.direction = direction
//        self.movement = movement
//        print("")
//    }
//}

var currentSpeed = 100
var movement1: Bool = true
var maxSpeed = 400

func drive( _ movement: Int) -> Int {
        repeat {
        print(currentSpeed)
        if movement1{
            currentSpeed += 20
            print(currentSpeed)
            movement1 = true
            maxSpeed = 400
        }
        
        if currentSpeed == maxSpeed{
            movement1 = false
            print("top speed")
        }
    } while currentSpeed < maxSpeed
    return (Double(currentSpeed))
}
print(movement)








//class VehicleController: UIViewController {
//    
//    
//    
//    @IBOutlet weak var gameScreen: UIImageView!
//    
//    
//    @IBOutlet weak var responseField: UITextField!
//    
//    @IBAction func forward(_ sender: UIButton) {
//    }
//    
//    @IBAction func left(_ sender: UIButton) {
//    }
//    
//    @IBAction func park(_ sender: UIButton) {
//    }
//    
//    @IBAction func Right(_ sender: UIButton) {
//    }
//    
//    @IBAction func gear(_ sender: UIStepper) {
//    }
//}