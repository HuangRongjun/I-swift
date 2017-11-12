//
//  Town.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 12/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

struct Town {
    var population =         5_422
    var numberOfStoplights = 4
    var isMonsterAttacking = false
    func printDescription() {
        print("population: \(population), number of stoplights: \(numberOfStoplights)")
    }

    mutating func changePopulation(by amount: Int) {
        if isMonsterAttacking {
            population -= amount
        } else {
            population += amount;
        }
    }
}
