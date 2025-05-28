var input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var givenArray = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: N + 1)
var results = [Int]()

for i in 1...givenArray.count {
	dp[i] = dp[i-1] + givenArray[i-1]
}

for _ in 0..<M {
	let someCase = readLine()!.split(separator: " ").map { Int($0)! }
	let i = someCase[0]
	let j = someCase[1]
	results.append(dp[j] - dp[i - 1])
}

results.forEach { print($0) }