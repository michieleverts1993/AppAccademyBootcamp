//: Playground - noun: a place where people can play

import UIKit

let sumNumbers = [1,2,1,6,4,22,5,44,234,4,46,3,23234,34,346,45,3,2,213,4,46,65]

//Why use yur array in the functin parameters?
func totalNumbers(arrayForNumbers: [Int]) -> Int{
        var total = 0
    
    
    
    for i in arrayForNumbers{
        total += i
    }
    
    return total
}
print(totalNumbers(arrayForNumbers:sumNumbers))
//Create a print statement with crrect functincall.


    
    












