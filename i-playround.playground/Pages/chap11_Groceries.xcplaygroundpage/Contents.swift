//: [Previous](@previous)

import Cocoa

var groceryBag: Set  = ["Apples", "Oranges", "Pineapple"]
for food in groceryBag {
    print(food)
}
let hasBananas = groceryBag.contains("Bananas")

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey", "Apples"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

//: # Excercise
let myCites = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCites = Set(["Chicago", "San Francisco", "Jacksonville"])
let isSuperset = myCites.isSuperset(of: yourCites)
let isSubset = yourCites.isSubset(of: myCites)

//formUnion(_:), formIntersection(_:), formSymmetricDifference(_:), and subtract(_:).

groceryBag.formUnion(friendsGroceryBag)
groceryBag

groceryBag.formIntersection(roommatesGroceryBag)
groceryBag

var employees: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]
let neighbors = ["Bethany", "Eric", "Forlani", "Greta"]
employees.formIntersection(neighbors)
print(employees)
// Prints "["Bethany", "Eric"]"

//: [Next](@next)
