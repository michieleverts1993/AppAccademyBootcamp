//
//  shoppingListDetails.swift
//  shoppingListV2
//
//  Created by Michiel Everts on 17-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseCore
import FirebaseDatabase

class ShoppingDataService {

public static let sharedInstance = ShoppingDataService()  // Singleton: https://en.wikipedia.org/wiki/Singleton_pattern

private init() { // Singleton: https://en.wikipedia.org/wiki/Singleton_pattern
}

var ref: DatabaseReference!

public func getShoppingListData() {
    ref = Database.database().reference()
    ref.observeSingleEvent(of: .value , with: { (snapshot) in
        if let data = snapshot.value as? NSDictionary,
            let shoppingItem = data["ShoppingItems"] as? NSDictionary {
            let a = self.dictToObject(shoppingListItem: shoppingItem)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationIDs.addedShoppingData),
                                            object: self,
                                            userInfo: [dictKey.data : a])
        }
        
    })
    
    ref.child("ShoppingItems").observe(.childAdded, with: { (snapshot) in
        if let dataItem = snapshot.value as? NSDictionary,
            let itemObject = self.oneDictionaryToOneObject(item: dataItem) {
            
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationIDs.addedShoppingData),
                                            object: self,
                                            userInfo: [dictKey.data : itemObject])
        }
    })
}

func dictToObject(shoppingListItem: NSDictionary) -> [ShoppingListItems] {
    var shopitems: [ShoppingListItems] = []
    
    for key in shoppingListItem.keyEnumerator() {
        if let item = shoppingListItem[key] as? NSDictionary,
            let itemObj = oneDictionaryToOneObject(item: item) {
            shopitems.append(itemObj)
        }
    }
    return shopitems
}

func oneDictionaryToOneObject(item : NSDictionary) -> ShoppingListItems? {
    if let name = item["name"] as? String,
        let price = item["price"] as? Double,
        let details = item["details"] as? String,
        let photoUrlString = item["photo"] as? String{
        let shoppingitemObject = ShoppingListItems.init(fullName: name,
                                                        price: price,
                                                        details: details,
                                                        photoUrlString: photoUrlString)
        return shoppingitemObject
        } else {
        return nil
    }
}
}


//    static func shoppingItemData(){
//        
//        let eggs = ShoppingListItems.init(fullName: "Chicken eggs", price: 1.89, details: "Bio chicken egss", photo: #imageLiteral(resourceName: "eggs"))
//        let mayo = ShoppingListItems.init(fullName: "Real mayo", price: 0.89, details: "Bio mayo", photo: #imageLiteral(resourceName: "mayo"))
//        let wasabi = ShoppingListItems.init(fullName: "Hot wasabi", price: 1.50, details: "Real Japanese wasabi", photo: #imageLiteral(resourceName: "wasabi"))
//        let water = ShoppingListItems.init(fullName: "Spring water", price: 0.30, details: "Himalaya spring water", photo: #imageLiteral(resourceName: "water"))
//        let bread = ShoppingListItems.init(fullName: "Tiger bread", price: 2.30, details: "Home made bread", photo: #imageLiteral(resourceName: "bread"))
//        let chicken = ShoppingListItems.init(fullName: "Bio chicken", price: 2.70, details: "Lovely chicken", photo: #imageLiteral(resourceName: "chicken"))
//        
//        let itemArray = [eggs,mayo,wasabi,water,bread,chicken]
//        let itemDic = [dictKey.data : itemArray]
//        
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationIDs.shoppingData), object: self, userInfo: itemDic)
//        
//        
//    }
//
//}

