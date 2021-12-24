import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var k = k
    var stack = [String]()
    for i in number {
        while k > 0, !stack.isEmpty, stack.last! < String(i) {
            stack.removeLast()
            k -= 1
        }
        stack.append(String(i))
    }
    if k == 0 {
        return stack.joined()
    } else {
        return stack[0..<number.count-k].joined()
    }
}
