//
//  Vampire.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 12/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var currentVampires    = [Vampire]()
    let vampireTerrorPower = 1
    
    final override func terrorizeTown() {
        town?.isMonsterAttacking = true
        if let currentPopulation = town?.population {
            switch currentPopulation {
            case 0:
                print("\(self.name) tried terrorizing but everyone was either dead or a vampire... nobody left to terrorize.")
                printVampireCount()

            default:
                super.terrorizeTown()
                town?.changePopulation(by: vampireTerrorPower)
                town?.attackType = .vampie
                currentVampires.append(Vampire())
                printVampireCount()
            }
        }
    }
    
    func printVampireCount() {
        print("There are \(currentVampires.count) vampires in this town.")
    }
}
