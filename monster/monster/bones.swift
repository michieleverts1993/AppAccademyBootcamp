//
//  bones.swift
//  monster
//
//  Created by Michiel Everts on 08-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation

class Bone {
    var type: boneType
    var crunched: Bool
    
    init(type: boneType, crunched: Bool) {
        self.type = type
        self.crunched = crunched
    }
}


