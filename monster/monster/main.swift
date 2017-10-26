//
//  main.swift
//  monster
//
//  Created by Michiel Everts on 08-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation

var boyBones: [Bone] = []

for loopCounter in 1...10{
    var bone = Bone.init(type: .boyBones, crunched: false)
    boyBones.append(bone)
}

class boy {
    var theBoy = Boy(type: humanType.boy, name: "Ben", Bones: boyBones)
}

var michiel = Monster.init(age: 1000, name: "ben", monsterTeeth: Fang)
var bonesReturned = michiel.EatHuman

//print(bonesReturned)



