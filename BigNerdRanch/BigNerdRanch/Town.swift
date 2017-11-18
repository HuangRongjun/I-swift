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
    var population =         5_422 {
        didSet(oldPopulation){
            print("The population has changed to \(population) form \(oldPopulation)")
        }
    }
    var numberOfStoplights = 4
    var isMonsterAttacking = false
    
    enum Size {
        case samll
        case medium
        case large
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
