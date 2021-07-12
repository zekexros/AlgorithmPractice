import Foundation

var input = Int(readLine()!)!
var fibonacciArray = [0,1]

if input > 1 {
    for i in 2...input {
        fibonacciArray.append(fibonacciArray[i-1] + fibonacciArray[i-2])
    }
}
print(fibonacciArray[input])
