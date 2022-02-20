import Foundation

var count = readLine()!.split(separator: " ").map { Int($0)! }
var result = 1
var find = true
var E = 1
var S = 1
var M = 1

while true {
    if count[0] == E, count[1] == S, count[2] == M {
        print(result)
        break
    }
    
    E += 1
    S += 1
    M += 1
    
    if E == 16 {
        E = 1
    }
    
    if S == 29 {
        S = 1
    }
    
    if M == 20 {
        M = 1
    }
    
    result += 1
}
