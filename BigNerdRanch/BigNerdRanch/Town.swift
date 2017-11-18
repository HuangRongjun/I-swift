//
//  Town.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 12/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    var mayor = Mayor()
    var attackType: AttackType = .monster
    var population =         5_422 {
        didSet(oldPopulation){
            if oldPopulation > population {
                print("The population has changed to \(population) form \(oldPopulation)")
                mayor.offerCondolences(forMonsterAttackType: attackType)
            }
        }
    }
    var numberOfStoplights = 4
    var isMonsterAttacking = false
    
    enum Size {
        case samll
        case medium
        case large
    }
    
    enum AttackType {
        case monster
        case zombie
        case vampie
    }
    
//    lazy var townSize: Size = {
//        switch self.population {
//        case 0...10_000:
//            return Size.samll
//
//        case 10_001...100_00:
//            return Size.medium
//
//        default:
//            return Size.large
//        }
//    }()
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.samll
    
            case 10_001...100_000:
                return Size.medium
    
            default:
                return Size.large
            }
        }
    }
    
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
