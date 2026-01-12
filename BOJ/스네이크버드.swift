var input = readLine()!.split(separator: " ").map { Int($0)! }
var numOfFruit = input[0]
var lenOfSnake = input[1]
var fruits = readLine()!.split(separator: " ").map { Int($0)! }
var finish = false

while !finish {
	var ate = false
	for (index, fruit) in fruits.enumerated() {
		if lenOfSnake >= fruit {
			lenOfSnake += 1
			fruits.remove(at: index)
			ate = true
			break
		}
	}
	
	if !ate {
		break
	}
}

print(lenOfSnake)