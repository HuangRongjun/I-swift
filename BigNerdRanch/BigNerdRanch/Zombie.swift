//
//  Zombie.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 12/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp = true
    
    final override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
}
