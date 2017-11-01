//: [Previous](@previous)

import Cocoa

var moiveRatings = ["Donnie Darko": 4,
                    "Chungking Express": 5,
                    "Dark City": 4]
print("I have rated \(moiveRatings.count) movies.")

let darkoRating = moiveRatings["Donnie Darko"]
moiveRatings["Dark City"] = 6

for (key, value) in moiveRatings {
    print("THe movie \(key) was rated \(value)")
}

let oldRating: Int? = moiveRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = moiveRatings["Donnie Darko"] {
    print("Old raing: \(lastRating); current rating: \(currentRating)")
}

moiveRatings["The Cabinet of Dr. Caligari"] = 5
moiveRatings
let removeRatings: Int? =  moiveRatings.removeValue(forKey: "Dark City")
moiveRatings["Dark City"] = nil
moiveRatings

for moive in moiveRatings.keys {
    print("User has rated \(moive)")
}

let watchMoives = Array(moiveRatings.keys)

//: # Excercise
let california = [30306, 30307, 30308, 30309, 30310]
let washington = [30311, 30312, 30313, 30314, 30315]
let newYork = [30301, 30302, 30303, 30305, 30306]
let zipCodes = ["california": california, "washington": washington, "newYork":newYork]

//var results: [Int]
for zipCode in zipCodes.values {
    print(zipCode, terminator: "\t")
//    results.append(zipCode)
}
//print(results)

print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")

for n in 1...5 {
    print(n, terminator: "\t")
}

//: [Next](@next)
