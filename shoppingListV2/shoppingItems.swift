//
//  shoppingItems.swift
//  shoppingListV2
//
//  Created by Michiel Everts on 17-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation
import UIKit



class ShoppingListItems {
    
    var fullName: String
    var price: Double
    var details: String
    var photo: UIImage = UIImage()
    var photoUrlString: String
    
    init(fullName: String, price: Double, details: String,photo: UIImage, photoUrlString: String) {
        
        self.fullName = fullName
        self.price = price
        self.details = details
        self.photo = photo
        self.photoUrlString = photoUrlString
        
        
    }
    
    
}
