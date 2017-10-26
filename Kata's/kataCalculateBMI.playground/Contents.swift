//: Playground - noun: a place where people can play

import UIKit
func bmi(weight: Double,height: Double) -> String {
    var bmiResult= (weight / (sqrt(height))))
    var weight = Double
    var Height = Double
    
    switch if bmiResult => 0 {
    case 1...18,5:
        print("Underweight")
    case 19...25:
        print("Normal")
    case 26...30:
        print("Overweight")
    case >30:
        print("Obese")
    default:
        print("DMN!!!!! u big")
    }
    return bmiResult
}
    
    
    

    
    
