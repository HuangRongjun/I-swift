//
//  Monster.swift
//  chap17_MonsterTown
//
//  Created by iCrazyMage on 19/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

class Monster {
    class var spookyNoise: String {
        return "Grrr"
    }
    static let isTerrifying = true
    var town: Town?
    var name = "Monster"
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if let _ = town {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
