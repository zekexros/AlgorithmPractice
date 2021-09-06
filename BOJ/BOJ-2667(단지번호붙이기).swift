// 1. willVisitArray(1)를 생성하고 1의 좌표들을 모두 담는다.
// 2. willVisitArray(1)의 첫번째를 꺼내 dfs를 실행한다. 이 때 visitedArray를 이용하여 방문 여부를 확인한다.
// 3. dfs는 4방향 모두 확인한다. 그리고 willVisitArray(2)에 추가한다. 그리고 계속 탐색한다. 탐색이 끝나면 visitedArray의 count를 추가하고 removeAll해준다.

var size = Int(readLine()!)!
var square = [[Int]]()
var willVisitArray: [(Int, Int)] = []
var visitedArray: [(Int, Int)] = []
var result = [Int]()

for i in 0..<size {
    let line = readLine()!
    
    square.append(line.map { Int(String($0))! })
    
    line.map { Int(String($0))! }.enumerated().forEach { (offset, element) in
        if element == 1 {
            willVisitArray.append((offset, i))
        }
    }
}

while !willVisitArray.isEmpty {
    let point = willVisitArray.removeLast()
    if visitedArray.contains(where: { (x, y) in
        return point == (x, y)
    }) {
        continue
    }
    var willVisitArea = [point]
    var visitedArea = [(Int, Int)]()
    
    while !willVisitArea.isEmpty {
        let point = willVisitArea.removeLast()
        if visitedArray.contains(where: { (x, y) in
            return point == (x, y)
        }) {
            continue
        }
        
        let dx = [1, -1, 0, 0]
        let dy = [0, 0, -1, 1]
        
        for i in 0..<4 {
            let newX = point.0 + dx[i]
            let newY = point.1 + dy[i]
            
            if newX < 0 || newX > size-1 || newY < 0 || newY > size-1 {
                
                continue
            }
            
            if square[newY][newX] == 1 {
                willVisitArea.append((newX, newY))
            }
        }
        visitedArray.append(point)
        visitedArea.append(point)
    }
    result.append(visitedArea.count)
}

print(result.count)
result.sorted(by: <).forEach { size in
    print(size)
}


