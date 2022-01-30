import Foundation

var m = readLine()!.map { String($0) }
var stack = 0
var pices = 0
var pre = ""
for i in m {
    if i == "(" {
        stack += 1
    } else {
        if pre == "(" {
            stack -= 1
            pices += stack
        } else {
            stack -= 1
            pices += 1
        }
        
    }
    pre = i
}

print(pices)
