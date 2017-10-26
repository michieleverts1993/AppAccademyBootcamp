//: Playground - noun: a place where people can play

import UIKit
import 

private var displayValue: Double {
    get {
        return Double(display.text!)!
    }
    
    set {
        display.text = String(newValue)
    }
}