//: [Previous](@previous)

import Cocoa

var str2: String?
print(str2 ?? "Error")
//print(str2!)
print(str2 as Any)

var errorCodeString: String?
//errorCodeString = "404"
var errorDescription: String?

//print(errorCodeString)
//if errCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}
if let theError = errorCodeString, let errorCodeInterger = Int(theError), errorCodeInterger == 404 {
//    print(theError)
//    if let errCodeInterger = Int(theError) {
//        print("\(theError): \(errorCodeInterger)")
    errorDescription = "\(errorCodeInterger + 200): resource was not found"
//    }
} else {
    print("No Error1")
}

let descriptionCode = errorDescription ?? "No Error"

var upCaseErrorCodeString = errorDescription?.uppercased()
errorDescription
print(upCaseErrorCodeString ?? "No Error2")

upCaseErrorCodeString?.append(" PLEASE TRY AGAIN.")
upCaseErrorCodeString

var errCodeString: String!
//errCodeString = "404"
print(errCodeString)

let anotherErrCodeString: String! = errCodeString
let yetAnotherErrCodeString = errCodeString


//: [Next](@next)
