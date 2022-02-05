import Foundation

var input = readLine()!.map { Int(String($0))! }

if !input.contains(0) {
    print(-1)
} else if input.reduce(0, +) % 3 != 0 {
    print(-1)
} else {
    print(input.sorted(by: >).map { String($0) }.joined())
}
