import Foundation

var input = Int(readLine()!)!
var start = 1
var count = 0

while true {
    count += 1
    input -= start
    if input == 0 {
        print(count)
        break
    } else if input < 0 {
        print(count-1)
        break
    } else {
        start += 1
        continue
    }
}
