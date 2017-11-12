//: [Previous](@previous)

import Cocoa

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personnalGreeting = greet(name: "Matt", withGreeting: "Hello.")
print(personnalGreeting)

func greeting(forName name: String) -> (String) -> String {
    func greeting(_ greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greetMattWith = greeting(forName: "Matt")
let mattGreeting = greetMattWith("Hello.")
print(mattGreeting)

//: [Next](@next)
