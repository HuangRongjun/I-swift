//
//  Zombie.swift
//  chap17_MonsterTown
//
//  Created by iCrazyMage on 19/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = false
    private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
    }
}
