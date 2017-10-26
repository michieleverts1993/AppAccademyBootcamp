//
//  Human.swift
//  monster
//
//  Created by Michiel Everts on 08-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation

class Human {
    var type: humanType
    var name: String
    var Bones: [Bone]
    
    init(type: humanType, name: String, Bones: [Bone]) {
        self.type = type
        self.name = name
        self.Bones = Bones
    }
    
    func talk(word: String) {
        print(word)
        
    }

}



