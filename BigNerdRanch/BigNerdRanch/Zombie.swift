//
//  Zombie.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 12/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

class Zombie: Monster {
   override class var spookyNoise: String {
        return "Brains..."
    }
    var walkWithLimp                = true
    private(set) var isFallingApart = false
    
    var mayor = Mayor()
    var zombieTerrorPower = 10
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.isMonsterAttacking = true

            if let currentPopulation = town?.population {
                switch currentPopulation {

                case 0:
                    print("\(self.name) tried terrorizing but everyone was dead... nobody left to terrorize.")

                case 1...zombieTerrorPower:
                    town?.population = 0
                    print("\(self.name) terrorized the town, and now everyone is dead.")

                default:
                    super.terrorizeTown()
                    town?.changePopulation(by: zombieTerrorPower)
                    town?.attackType = .zombie
                }
            }
            town?.isMonsterAttacking = false
        }
    }
}
