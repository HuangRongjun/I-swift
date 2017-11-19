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
    var name: String
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    required init?(town: Town?, monsterName name: String) {
        guard name.characters.count > 0 else {
            return nil
        }
        self.town = town
        self.name = name
    }
    
    func terrorizeTown() {
        if let _ = town {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
