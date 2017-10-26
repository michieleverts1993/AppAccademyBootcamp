//
//  classViewController.swift
//  shoppingList
//
//  Created by Michiel Everts on 16-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class ShoppingItems {
    
    var name: String = ""
    var price: Double = 0.0
    var details: String = ""
    var photo: UIImage
    
    
    init(name: String, price: Double, details: String, photo: UIImage) {
        
        
        self.name = name
        self.price = price
        self.details = details
        self.photo = photo
    }
}



















