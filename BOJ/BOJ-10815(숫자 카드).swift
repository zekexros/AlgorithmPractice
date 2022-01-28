import Foundation

var m = Int(readLine()!)!
var cards = [Int]()
var integers = [Int]()
cards = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
var n = Int(readLine()!)!
integers = readLine()!.split(separator: " ").map { Int($0)! }


func binarySearch(n: Int) -> Int {
    var start = 0
    var end = cards.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if cards[mid] > n {
            end = mid - 1
        } else if cards[mid] < n {
            start = mid + 1
        } else {
            return 1
        }
    }
    return 0
}

print(integers.map { String(binarySearch(n: $0)) }.joined(separator: " "))
