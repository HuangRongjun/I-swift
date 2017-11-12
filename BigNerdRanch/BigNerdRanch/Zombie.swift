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
        let subPopulation = 10
        if let population = town?.population, population > subPopulation {
            town?.changePopulation(by: -subPopulation)
        } else {
            town?.population = 0
        }
        super.terrorizeTown()
    }
}
