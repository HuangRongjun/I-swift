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
myTown.changePopulation(by: 500)
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
fredTheZombie.town?.printDescription()