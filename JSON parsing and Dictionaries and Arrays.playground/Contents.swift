//: Playground - noun: a place where people can play

import UIKit

//Here is the escaped string...just imagine this is our data retrieved from a server! Like for real!!!
var itemsJSONString = "{\n\t\"PraxisItemsForSale\": [{\n\t\t\"id\": 1,\n\t\t\"name\": \"A green door\",\n\t\t\"price\": 12.50,\n\t\t\"tags\": [\"home\", \"green\"]\n\t}, {\n\t\t\"id\": 2,\n\t\t\"name\": \"A saw\",\n\t\t\"price\": 10,\n\t\t\"tags\": [\"garden\", \"home\"]\n\t}]\n}"


//The clever parsed, it deserialises the JSON, don't worry about it too much lot of complicated things here
extension String {
    
    var parseJSONString: AnyObject? {
        
        let data = self.data(using: String.Encoding.utf8, allowLossyConversion: false)
        
        if let jsonData = data {
            do {
                let message = try JSONSerialization.jsonObject(with: jsonData, options:.mutableContainers)
                return message as AnyObject?
            }
            catch let error as NSError
            {
                print("An error occurred: \(error)")
                return nil
            }
            
            // Will return an object or nil if JSON decoding fails
        } else {
            // Lossless conversion of the string was not possible
            return nil
        }
    }
}


let itemsDictionary = itemsJSONString.parseJSONString as? NSDictionary
let ItemsArray = itemsDictionary?["PraxisItemsForSale"] as? NSArray
//print(itemsDictionary)

for praxisItem in ItemsArray!  {
    if let currentItem = praxisItem as? Dictionary<String, AnyObject>, let name = currentItem["name"]{
        print(name)}
}














