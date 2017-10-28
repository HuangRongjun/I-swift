//: [Previous](@previous)

import Cocoa

var myFirstInt: Int = 0
for _ in 1...10 {
    myFirstInt += 1
    print(myFirstInt)
}
print(myFirstInt)

print("--->")
for i in 1...100  where i % 3 == 0 {
    print(i)
}

//: # While
var i = 1
while i < 6{
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

//: #repeat-while

//: # Exercise
for i in 0...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("\(i) FIZZ BUZZ")
    }
    if i % 3 == 0 {
        print("\(i) FIZZ")
    } else if i % 5 == 0 {
        print("\(i) BUZZ")
    } else {
        print(i)
    }
}

for i in 0...100 {
    switch (i % 3, i % 5) {
    case (0, 0):
        print("\(i) FIZZ BUZZ")
    case (0, _):
        print("\(i) FIZZ")
    case (_, 0):
        print("\(i) BUZZ")
    default:
        print(i)
    }
}

//: [Next](@next)
