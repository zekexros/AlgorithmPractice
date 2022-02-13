import Foundation

var input = Int(readLine()!)!
var quarter = 25
var dime = 10
var nickel = 5
var penny = 1

func change(n: Int, quarters: inout Int, dimes: inout Int, nickels: inout Int, pennys: inout Int) {
    if n == 0 {
        return
    }
    
    if n >= 25 {
        quarters += n / quarter
        change(n: n % quarter, quarters: &quarters, dimes: &dimes, nickels: &nickels, pennys: &pennys)
    } else if n >= 10 {
        dimes += n / dime
        change(n: n % dime, quarters: &quarters, dimes: &dimes, nickels: &nickels, pennys: &pennys)
    } else if n >= 5 {
        nickels += n / nickel
        change(n: n % nickel, quarters: &quarters, dimes: &dimes, nickels: &nickels, pennys: &pennys)
    } else {
        pennys += n / penny
        change(n: n % penny, quarters: &quarters, dimes: &dimes, nickels: &nickels, pennys: &pennys)
    }
}

for _ in 0..<input {
    let money = Int(readLine()!)!
    var quarters = 0
    var dimes = 0
    var nickels = 0
    var pennys = 0
    
    change(n: money, quarters: &quarters, dimes: &dimes, nickels: &nickels, pennys: &pennys)
    print("\(quarters) \(dimes) \(nickels) \(pennys)")
}
