//
//  calculatorBrain.swift
//  calculator
//
//  Created by Michiel Everts on 12-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation


class CalculatorBrain {
    var isTyping: Bool = false
    var operation = ""
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    
    func operation(_uiSender: Double) -> Double {
        isTyping = false
        var result: Double = 0
//      secondNumber = button tapped on calculator
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "*" {
            result = firstNumber * secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        }
        return result
    }

    
    
}
