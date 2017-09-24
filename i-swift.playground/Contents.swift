//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = 5
var b = 3
let sum = a + b
let sub = a - b 
let mul = a * b
let div = a / b 
let mod = a % b

var result = 0;
for i in 0...100{
    result += i;
}
print(result);

let PI = 3.1455926;
var pi = 3.14e-2

Int.max
Int.min

Int64.max
Int64.min

let fiftenInDecimal = 15
let fiftenInHex = 0xF
let fiftenInOctal = 0o17
let fiftenInBinary = 0b1111

// 千分位
let million = 1_000_000

var oneThirdFload: Float = 1/3
var oneThridDouble: Double = 1/3

print(oneThirdFload)
print(oneThridDouble)

type(of: PI)
type(of: oneThirdFload)
type(of: oneThridDouble)

// Create an empty array
var array1: Array<Int> = Array<Int>()
var array2: [Int] = []
var array3 = array2

// Initialization with values
var threeInts = [Int](repeating:3, count: 3)
var sixInts = threeInts + threeInts
var fiveInts = [1, 2, 3, 4, 5]

// Common arributes
fiveInts.count
array1.isEmpty

// Access element
fiveInts[2]
// fiveInts[5]
fiveInts[0...2]
type(of: fiveInts[0..<2])

// Traverse
for value in fiveInts{
    print(value)
}

for (index, value) in fiveInts.enumerated(){
    print(index,value)
}

fiveInts.forEach(){
    print($0)
}

// Array modification
array1.append(1)
array1 += [2, 3, 5, 6, 3, 2]

array1.insert(0, at: array1.startIndex)
array1.insert(5, at: array1.endIndex)

array1.remove(at: 4)
array1.removeLast()

// array2.removeLast()


















