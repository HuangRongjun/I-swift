//: [Previous](@previous)

import Cocoa

enum TextAlignment: Int {
    case left    = 20
    case right   = 30
    case center  = 40
    case justify = 50
}

//var alignment: TextAlignment = TextAlignment.left
var alignment = TextAlignment.left
alignment = .justify

if alignment == .right {
    print("we should right-align the text!")
}

switch alignment {
case .left:
    print("left align")

case .right:
    print("right align")
    
case .center:
    print("center align")
    
case .justify:
    print("justified")
}

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("The alignment variable has raw value \(TextAlignment.justify.rawValue)")

// 创建一个原始值
let myRawValue = 20

// 尝试将原始值转化为 TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into a TextAlignment (\(myAlignment))")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case swift       = "swift"
    case objecttiveC = "objective-c"
    case c           = "c"
    case cpp         = "c++"
    case java        = "java"
    case go          = "go"
    case python      = "python"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favortive programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case on
    case off

    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0

bulb.toggle()
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(with: Double, height: Double)
    case triangle(sideA: Double, sideB: Double, sideC: Double)
    
    func isUsefulTriangle(_ a: Double, _ b: Double, _ c: Double) -> Bool{
        if a + b > c, a + c > b, b + c > a {
            return true
        } else {
            return false
        }
    }
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(with: w, height: h):
            return w * h
            
        case let .triangle(sideA: a, sideB: b, sideC: c):
            if isUsefulTriangle(a, b, c){
                let s = (a + b + c) / 2
                return sqrt(s * (s - a) * (s - b) * (s - c))
            } else {
                return 0
            }
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * 4
            
        case let .rectangle(with: w, height: h):
            return (w + h) * 2
            
        case let .triangle(sideA: a, sideB: b, sideC: c):
            return a + b + c
        }
    }
}

var pointShape = ShapeDimensions.point
print("point's area = \(pointShape.area())")
print("point's perimeter = \(pointShape.perimeter())")

var squareShape = ShapeDimensions.square(side: 10.0)
print("square's area = \(squareShape.area())")
print("square's perimeter = \(squareShape.perimeter())")

var rectangleShape = ShapeDimensions.rectangle(with: 5.0, height: 10.0)
print("rectangle's area = \(rectangleShape.area())")
print("rectangle's perimeter = \(rectangleShape.perimeter())")

var triangleShape = ShapeDimensions.triangle(sideA: 3, sideB: 4, sideC: 5)
print("triangle's area = \(triangleShape.area())")
print("triangle's perimeter = \(triangleShape.perimeter())")

indirect enum FamilyTree {
    case noKnownParents
    case oneKnownParents(name: String, ancestors: FamilyTree)
    case toKnownParents(fatherName: String, fatherAncestors: FamilyTree,
                        motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.toKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParents(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)
print(fredAncestors)
//: [Next](@next)
