import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var queryDict = [String : [Int]]()
    
    for i in info {
        let infos = i.components(separatedBy: " ")
        let languages = [infos[0], "-"]
        let jobs = [infos[1], "-"]
        let careers = [infos[2], "-"]
        let foods = [infos[3], "-"]
        let scores = Int(infos[4])!
        
        for lang in languages {
            for job in jobs {
                for career in careers {
                    for food in foods {
                        let key = "\(lang) \(job) \(career) \(food)"
                        if queryDict[key] == nil {
                            queryDict[key] = [scores]
                        } else {
                            queryDict[key]?.append(scores)
                        }
                    }
                }
            }
        }
    }
    
    for query in queryDict {
        let sorted = query.value.sorted()
        queryDict[query.key] = sorted
    }
    
    let queries = query.map { $0.components(separatedBy: " and") }.map { query -> [String] in
        let foodWithScore = query.last!.trimmingCharacters(in: .whitespaces)
        let seperated = foodWithScore.components(separatedBy: " ")
        var query = query.map { $0.trimmingCharacters(in: .whitespaces) }
        
        query.removeLast()
        return query + seperated
    }
    
    return queries.map { query -> Int in
        let language = query[0]
        let job = query[1]
        let career = query[2]
        let food = query[3]
        let score = Int(query[4])!
        
        if let key = queryDict["\(language) \(job) \(career) \(food)"] {
            var low = 0
            var high = key.count - 1
            
            while low <= high {
                let mid = (low + high) / 2
                if key[mid] < score {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
            return key.count - low
        } else {
            return 0
        }
    }
}
