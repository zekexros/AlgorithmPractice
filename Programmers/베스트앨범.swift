import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    // 딕셔너리에 넣는데, key는 장르, value는 튜플형태로 (id, time)으로 삽입한다.
    var musicWithGenre = [String : [(Int, Int)]]()
    var result = [Int]()
    
    // for문을 돌아 데이터를 삽입하는 곳
    for i in 0..<genres.count {
        if musicWithGenre[genres[i]] == nil {
            musicWithGenre[genres[i]] = [(i, plays[i])]
        } else {
            musicWithGenre[genres[i]]!.append((i, plays[i]))
        }
    }
    
    // 우선 Dict타입에 있는 데이터들을 장르(key)마다 시간을 다합친것을 기준으로 정렬해준다.
    let sortedWithAllTime = musicWithGenre.sorted { lhs, rhs -> Bool in
        let reduced = lhs.value.reduce((0, 0)) { result, element in
            return (0, result.1 + element.1)
        }
        
        let reduced2 = rhs.value.reduce((0, 0)) { result, element in
            return (0, result.1 + element.1)
        }
        return reduced.1 > reduced2.1
    }
    
    // 이후 Dict타입에서 장르(key)의 time(value튜플형태의 1에 해당)을 기준으로 정렬해준다. 단, time이 같을 경우 id(value튜플형태의 0에 해당)가 더 낮은것으로 반환한다.
    let sortedWithPlayTime = sortedWithAllTime.map { (key: String, value: [(Int, Int)]) -> (String, [(Int, Int)]) in
        let sorted = value.sorted { lhs, rhs in
            if lhs.1 == rhs.1 {
                return lhs.0 < rhs.0
            }
            return lhs.1 > rhs.1
        }
        return (key, sorted)
    }
    
    // 전처리가 완료된 데이터를 forEach문을 돌아 result배열에 더해준다.
    sortedWithPlayTime.forEach { (key, value) in
        if value.count == 1 {
            result.append(value[0].0)
        } else {
            result.append(value[0].0)
            result.append(value[1].0)
        }
    }
    
    
    return result
}

print(solution(["classic","classic","classic","classic","pop"], [500,150,800,800,2500]))
