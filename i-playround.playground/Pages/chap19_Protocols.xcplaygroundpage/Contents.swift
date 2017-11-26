//: [Previous](@previous)

import Cocoa

func printTable(_ data: [[String]], withColumnLabels columnLabels: String...) {
    var firstRow = "|"
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
    }
    print(firstRow)
    
    for row in data {
        var out = "|"
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnLabels[j].count - item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        print(out)
    }
}

let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    ["Fred", "50", "20"]
]
printTable(data, withColumnLabels: "Employee Name", "Age", "Years of Experience")

// 获取字符串的角标
for (n, c) in "Swift".enumerated() {
    print("\(n): '\(c)'")
}
// Prints "0: 'S'"
// Prints "1: 'w'"
// Prints "2: 'i'"
// Prints "3: 'f'"
// Prints "4: 't'"
//: [Next](@next)
