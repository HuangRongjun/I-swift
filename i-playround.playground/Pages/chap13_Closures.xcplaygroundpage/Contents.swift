//: [Previous](@previous)

import Cocoa

let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]
func sortAsecending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sorted(by: sortAsecending)
print(volunteersSorted)

let volunteersSorted2 = volunteerCounts.sorted { $0 < $1 }
print(volunteersSorted2)
//: [Next](@next)
