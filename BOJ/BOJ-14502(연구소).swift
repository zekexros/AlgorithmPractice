import Foundation

var input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var lab: [[Int]] = []
var safeArea: [[Int]] = []
var virus: [[Int]] = []
for _ in 0..<input[0] {
    let line = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    lab.append(line)
}
var numOfVirus: [Int] = []

// 0인 영역과 1인 영역을 배열에 담는다.
for i in 0..<input[0] {
    for j in 0..<input[1] {
        if lab[i][j] == 0 {
            safeArea.append([i, j])
        } else if lab[i][j] == 2 {
            virus.append([i, j])
        }
    }
}

func bfs(lab: inout [[Int]], safeArea: [[Int]], virus: [[Int]]) -> Int {
    var willInfectAreaQueue: [[Int]] = virus
    let dx = [1, 0, -1, 0]
    let dy = [0, -1, 0, 1]
    
    while !willInfectAreaQueue.isEmpty {
        let virus = willInfectAreaQueue.removeFirst()
        
        for i in 0..<dx.count {
            let y = virus[0] + dy[i] //행
            let x = virus[1] + dx[i] //열
            
            if x < 0 || x > input[1]-1 || y < 0 || y > input[0]-1 {
                continue
            }
            
            if lab[y][x] == 0 {
                lab[y][x] = 2
                willInfectAreaQueue.append([y,x])
            }
        }
    }
    return lab.map{$0.filter{$0==0}.count}.reduce(0,+)
}

// 0인 영역에 3개의 벽을 번갈아가며 설치한 후 bfs로 바이러스가 퍼진 영역을 구한다.
for i in 0..<safeArea.count {
    for j in i+1..<safeArea.count {
        for k in j+1..<safeArea.count {
            var tempLab = lab
            let wall1 = safeArea[i]
            let wall2 = safeArea[j]
            let wall3 = safeArea[k]
            
            tempLab[wall1[0]][wall1[1]] = 1
            tempLab[wall2[0]][wall2[1]] = 1
            tempLab[wall3[0]][wall3[1]] = 1
            
            numOfVirus.append(bfs(lab: &tempLab, safeArea: safeArea, virus: virus))
        }
    }
}

print(numOfVirus.max()!)
