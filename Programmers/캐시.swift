import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cacheQueue = Array<String>()
    var runTime = 0
    
    cities.forEach { city in
        let lowercased = city.lowercased()
        
        if cacheQueue.contains(lowercased) {
            runTime += 1
            let index = cacheQueue.firstIndex(of: lowercased)!
            cacheQueue.remove(at: index)
            cacheQueue.append(lowercased)
            
        } else {
            cacheQueue.append(lowercased)
            runTime += 5
            if cacheQueue.count > cacheSize {
                cacheQueue.removeFirst()
            }
        }
    }
    
    return runTime
}
