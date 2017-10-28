//: [Previous](@previous)

import Cocoa

var playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playgroud"
mutablePlayground += "!"
//
for c: Character in mutablePlayground.characters {
    print("'\(c)'")
}

//: #Unicode scalar
let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"
let aAcutePrecomposed = "\u{00E1}"
let b = (aAcute == aAcutePrecomposed)
print("aAcute: \(aAcute.count); aAcutePrecomposed: \(aAcutePrecomposed.count)")

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

// let index = playground[3]
//: 找到第5个字符
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharactor = playground[end]

let range = start...end
let firstFive = playground[range]

//: # Exercise
let empty = ""
let empty_start = empty.startIndex
let empty_end = empty.endIndex
print(empty_start)
print(empty_end)

//: [Next](@next)
