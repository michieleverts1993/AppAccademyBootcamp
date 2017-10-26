//
//  boy.swift
//  monster
//
//  Created by Michiel Everts on 08-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation

class Boy: Human {
    
    override func talk(word: String){
        super.talk(word: "the boy \(word)")
    }

    
}


// dont get this part? you mean override the initial init?
// whats super.init?
