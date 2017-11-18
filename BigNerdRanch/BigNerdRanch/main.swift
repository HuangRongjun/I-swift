//
//  main.swift
//  BigNerdRanch
//
//  Created by iCrazyMage on 12/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

// Struct
var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
myTown.printDescription()

// Class
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

// Vampire
let dracula  = Vampire()
dracula.name = "Dracula"
dracula.town = myTown
dracula.terrorizeTown()
dracula.terrorizeTown()
dracula.terrorizeTown()
dracula.town?.printDescription()

// Zombie
let fredTheZombie  = Zombie()
fredTheZombie.town = myTown
fredTheZombie.name = "Zombie"
fredTheZombie.zombieTerrorPower = 1000
fredTheZombie.terrorizeTown()
fredTheZombie.terrorizeTown()
fredTheZombie.terrorizeTown()
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}
