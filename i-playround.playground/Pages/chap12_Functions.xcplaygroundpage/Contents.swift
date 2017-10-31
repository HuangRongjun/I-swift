//: [Previous](@previous)

import Cocoa

func printGreeting() {
    print("Hello Playground")
}
printGreeting()

func printPersonnalGreeting(to names: String...) {
    for name in names {
        print("Hello \(name): welcome to your playground")
    }
}
printPersonnalGreeting(to: "Alex", "Chris", "Drew", "Pat")

var error = "The request failed: "
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if (code == 400) {
        errorString += "bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") {
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}
divisionDescriptionFor(numerator: 8.0, denominator: 2.0, withPunctuation: "!")

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds:[Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

func grabMiddleName(fromFullName name: (first: String, middle: String?, last: String)) -> String? {
    return name.middle
}
let middleNmae = grabMiddleName(fromFullName: ("Mat", "Danger", "Mathias"))
if let theName = middleNmae {
    print(theName)
}

func greetMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey, there!")
        return
    }
    
    guard middleName.characters.count <= 4 else {
        print("Hey, there!")
        return
    }
    print("Hey \(middleName)!")
}
greetMiddleName(fromFullName: ("Mat", "Danger", "Mathias"))

let aBunchOfNumvers = [10, 1, 4, 3, 57, 24, 89, 27, 156, 112]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumvers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

//: # Exercise
func siftBeans(fromGroceryList: String...) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for grocery in fromGroceryList {
        if grocery.hasSuffix("beans") {
            beans.append(grocery)
        } else {
            otherGroceries.append(grocery)
        }
    }
    return (beans, otherGroceries)
}
let result = siftBeans(fromGroceryList: "green beans", "milk", "black beans", "pinto beans", "apples")
result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]
//: [Next](@next)
