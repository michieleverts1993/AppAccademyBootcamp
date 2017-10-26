//: Playground - noun: a place where people can play

import Foundation

enum Operator {
    case ADD, SUBTRACT, MULTIPLY
    
    var transform: (Int, Int) -> Int {
        switch self {
        case .ADD:
            return (+)
        case .SUBTRACT:
            return (-)
        case .MULTIPLY:
            return (*)
        }
    }
}

func calculate(_ a: String, _ b: String, _ op: Operator) -> String {
    let n1 = Int(a, radix: 2)!
    let n2 = Int(b, radix: 2)!
    let result = op.transform(n1, n2)
    
    return String(result, radix: 2)
}


























//
//var binary = 0
//var digit  = 1
//var binaryResult: String = ""
//
//while binaryResult > 0 {
//    let reminder = binaryResult % 2
//    
//    // add the new digit to the number
//    binary = digit * reminder + binary
//    
//    // move the digit to the left
//    digit *= 10
//    
//    // remove the last binary digit
//    binaryResult /= 2
//}
