//
//  monster.swift
//  monster
//
//  Created by Michiel Everts on 08-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation

class Monster {
    var age: Int
    var name: String
    var monsterTeeth: teeth
    var allCrunchedBones: [Bone] = []
    
    init(age: Int, name: String, monsterTeeth: teeth) {
        self.age = age
        self.name = name
        self.monsterTeeth = monsterTeeth
    }
    
    func eatHuman(human: Human) -> [Bone] {
        if human.type == humanType.boy{
            print("hmmmm tasty")
        } else {
            print("ugh nasty")
        }
        return allCrunchedBones
    }
    
    func eatManyHumans(humans: [Human]) -> [Bone] {
        for human in humans {
            crunchBones(bone: human.Bones)
        }
        return allCrunchedBones
        
    }
    
    func crunchBone(bone: Bone) {
        if bone.crunched == true {
            allCrunchedBones.append(bone)
            switch bone.type {
            case .boyBones:
                print("yummy this tastes like a boy")
            case .manBones:
                print("yummy this tastes like a man")
            case .womanBones:
                print("yummy this tastes like a woman")

            }
        }
    }
    
    func crunchBones(bone: [Bone]) {
        for currentBone in bone {
            crunchBone(bone: currentBone)
        }
    }
    
}

// ask about self.

