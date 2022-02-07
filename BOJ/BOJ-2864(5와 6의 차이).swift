import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
var n = String(input[0]).map { String($0) }
var m = String(input[1]).map { String($0) }

func calculateMax(n: [String], m: [String]) -> Int {
    var n = n.map { n -> String in
        if n == "5" {
            return "6"
        } else {
            return "\(n)"
        }
    }
    
    var m = m.map { m -> String in
        if m == "5" {
            return "6"
        } else {
            return "\(m)"
        }
    }
    return Int(n.joined())! + Int(m.joined())!
}

func calculateMin(n: [String], m: [String]) -> Int {
    var n = n.map { n -> String in
        if n == "6" {
            return "5"
        } else {
            return "\(n)"
        }
    }
    
    var m = m.map { m -> String in
        if m == "6" {
            return "5"
        } else {
            return "\(m)"
        }
    }
    
    return Int(n.joined())! + Int(m.joined())!
}

print("\(calculateMin(n: n, m: m)) \(calculateMax(n: n, m: m))")
