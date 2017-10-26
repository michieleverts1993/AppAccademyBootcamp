//
//  shoppingItemService.swift
//  shoppingList
//
//  Created by Michiel Everts on 16-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation
import UIKit


class ShoppingItemService {
    
    static func ShoppingItemAny() -> [ShoppingItems]{
    
        let eggs = ShoppingItems.init(name: "eggs", price: 1.80, details: "bio eggs", photo: #imageLiteral(resourceName: "Eggs"))
        let mayo = ShoppingItems.init(name: "mayo", price: 1.0, details: "fresh mayo", photo: #imageLiteral(resourceName: "Mayo"))
        let water = ShoppingItems.init(name: "water", price: 0.3, details: "spring water", photo: #imageLiteral(resourceName: "water"))
        let wasabi = ShoppingItems.init(name: "wasabi", price: 1.0, details: "hot wasabi", photo: #imageLiteral(resourceName: "wasabi"))
        
        return [eggs, mayo, water, wasabi]
    }
    
    
}
