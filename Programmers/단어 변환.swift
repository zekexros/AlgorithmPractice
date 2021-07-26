import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var depths = [Int]()
    dfs(begin: begin, target: target, words: words, depth: 0, depths: &depths, visited: [])
    return depths.min() ?? 0
}

func dfs(begin: String, target: String, words:[String], depth: Int, depths: inout [Int], visited: [String]) {
    let newDepth = depth+1
    if begin == target {
        depths.append(depth)
        return
    }
    var nextWords = [String]()
    let visitedArray = visited + [begin]
    let beginArray = begin.map{ $0 }
    words.forEach { word in
        let wordArray = word.map{ $0 }
        var count = 0
        for i in 0..<begin.count {
            if beginArray[i] != wordArray[i] {
                count += 1
            }
        }
        if count == 1, !visited.contains(word) {
            nextWords.append(word)
        }
    }
    nextWords.forEach { word in
        dfs(begin: word, target: target, words: words, depth: newDepth, depths: &depths, visited: visitedArray)
    }
}
