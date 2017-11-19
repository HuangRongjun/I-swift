//
//  main.swift
//  chap17_MonsterTown
//
//  Created by iCrazyMage on 19/11/2017.
//  Copyright © 2017 iCrazyMage. All rights reserved.
//

import Foundation

var myTown = Town(region: "West", population: 10_000, stoplights: 16)
myTown = Town(population: 10_000, stoplights: 16)

let myTownSize = myTown.townSize
print(myTownSize)

myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

print("Victim pool: \(fredTheZombie?.victimPool ?? 0)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool ?? 0)")

print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil

var convenientZombie = Zombie(limp: true, fallingApart: false)
