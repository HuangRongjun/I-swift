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
    
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName name: String) {
        self.walksWithLimp = limp
        self.isFallingApart = fallingApart
        super.init(town: town, monsterName: name)
    }
    
    convenience init?(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee")
        }
    }
    
    convenience required init?(town: Town?, monsterName name: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: name)
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
    }
}
