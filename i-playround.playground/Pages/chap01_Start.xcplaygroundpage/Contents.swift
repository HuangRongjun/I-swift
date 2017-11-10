//: Playground - noun: a place where people can play

import Cocoa

//: Chap01
var str = "Hello, playground"
str += "!"
print(str)

//: #Chap02
//var numberOfStoplights : Int = 4
//numberOfStoplights += 2

let numberOfStoplights: Int = 4
var population: Int
population = 24550
let townName = "XiangZhou"
var unemploymentRate: Double
unemploymentRate = 10.3
let townDescription = "\(townName) has a population of \(population) and \(numberOfStoplights) stoplights and unemploymentRate is \(unemploymentRate)."
print(townDescription)

//: #Chap03
var message: String
if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000{
    message = "\(population) is a medium town!"
} else {
    message = "\(population) is pretty big!"
}

// ternary operator
// message  = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)

var hasPostOffice: Bool = true
if !hasPostOffice {
    print("Where do we buy stamps?")
}

//: # chap05
var statusCode: Int = 404
var errorString = "The request failed: "
switch statusCode {
case 400, 401, 403, 404:
    errorString = "There was somthing worng with the request."
    fallthrough
default:
    errorString += "Please review the request and try again."
}
print(errorString)

errorString = "The request failed: "
switch statusCode {
case 100, 101 :
    errorString += "Informational, \(statusCode)."
    
case 204:
    errorString += "Successful but no content, \(statusCode)."
    
case 300...307:
    errorString += "Redirection, \(statusCode)."
    
case 400...417:
    errorString += "Client error, \(statusCode)."
    
case 500...505:
    errorString += "Server error, \(statusCode)."
    
default:
    errorString = "\(statusCode) is not a know error code."
}
print(errorString)

//: # Tuple
let error = (code: statusCode, error: errorString)
error.code
error.error

error.0
error.1

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)
print(errorCodes)

switch errorCodes {
case (404, 404):
    print("No items found.")
    
case(404,_):
    print("First item not found.")
    
case(_,404):
    print("Second item not found.")
    
default:
    print("All items found.")
}

let age = 25
if case 18...35 = age, age >= 21, age < 30{
    print("In cool demographic and of drinking age and young.")
}

//: Exercise
let point = (x: 1, y :4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
    
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
    
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
    
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
    
case (_, 0):
    print("\(point) sits on the x-axis")
    
case (0, _):
    print("\(point) sits on the y-axis")
    
default:
    print(("Case not covered."))
}
