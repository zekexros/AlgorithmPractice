import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var round = 1
    var players: [Int] = Array(1...n)
    var slices = slice(players: players)
    var count = 0
    
    while count < 20 {
        slices = slice(players: players)
        players = []
        for slice in slices {
            if slice.contains(a), slice.contains(b) {
                return round
            }
            
            if slice.contains(a), !slice.contains(b) {
                players.append(a)
            } else if !slice.contains(a), slice.contains(b) {
                players.append(b)
            } else {
                players.append(slice[0])
            }
        }
        
        count += 1
        round += 1
        
    }
    return round
}
