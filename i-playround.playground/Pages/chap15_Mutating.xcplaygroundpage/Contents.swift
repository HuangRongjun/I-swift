//: [Previous](@previous)

import Cocoa

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personnalGreeting = greet(name: "Matt", withGreeting: "Hello.")
print(personnalGreeting)

//func greeting(forName name: String) -> (String) -> String {
//    func greeting(_ greeting: String) -> String {
//        return "\(greeting) \(name)"
//    }
//    return greeting
//}
//
//let greetMattWith = greeting(forName: "Matt")
//let mattGreeting = greetMattWith("Hello.")
//print(mattGreeting)

func greeting(_ greeting: String) -> (String) -> String {
    return {
        (name: String) -> String in
            return "\(greeting) \(name)"
    }
}

let friendlyGreetingFor = greeting("Hello.")
let mattGreeting = friendlyGreetingFor("Matt")

struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func chageTo (firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var person = Person()
let changeName = Person.chageTo
let changeNameFromMattTo = changeName(&person)
changeNameFromMattTo("John", "Gallagher")
person.firstName
person.chageTo(firstName: "Eva", lastName: "Green")
//: [Next](@next)
