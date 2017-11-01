//: [Previous](@previous)

import Cocoa

//var bucketList: Array<String>
var bucketList = ["Climb Mt. Everest"]
//bucketList.append("Fly hot balloom toFiji")
//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabount")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")
var newItems = [
                "Fly hot balloom toFiji",
                "Watch the Lord of the Rings trilogy in one day",
                "Go on a walkabout",
                "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"
                ]
//for item in newItems {
//    bucketList.append(item)
//}
bucketList += newItems
bucketList

bucketList.remove(at: 2)
bucketList
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilmanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)

let index = bucketList.index(of: "Fly hot balloom toFiji")

var myronsList = [
                    "Climb Mt. Kilmanjaro",
                    "Fly hot balloom toFiji",
                    "Toboggan across Alaska",
                    "Go on a walkabout in Australia",
                    "Scuba dive in the Great Blue Hole",
                    "Find a triple rainbow"
                ]
let equal = (bucketList == myronsList)

let lunches = [
                "Cheeseburger",
                "Veggie Pizza",
                "Chicken Caesar Salad",
                "Black Bean Burrito",
                "Falafel Wrap"
            ]
//lunches.remove(at: 1)

//: # Exercies
var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
toDoList.isEmpty

var reversedList = [String]()
for element in toDoList.reversed() {
    reversedList.append(element)
}
reversedList

let reversedToDoList = Array(toDoList.reversed())


//: [Next](@next)
