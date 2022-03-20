import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var result = [Int]()
    var emailedList: [String: [String]] = [:]
    var reportedList = [String: Int]()
    var emailedCountForId = [String: Int]()
    
    for i in report {
        let a = i.split(separator: " ").map { String($0) }
        let report = a[0]
        let reported = a[1]
        if emailedList[reported] == nil {
            emailedList[reported] = [report]
            reportedList[reported] = 1
        } else if !emailedList[reported]!.contains(report) {
            emailedList[reported]! += [report]
            reportedList[reported]! += 1
        }
    }
    
    for (id, reportCount) in reportedList {
        if reportCount >= k {
            for i in emailedList[id]! {
                emailedCountForId[i] = emailedCountForId[i] == nil ? 1 : emailedCountForId[i]! + 1
            }
        }
    }
    
    for id in id_list {
        if emailedCountForId[id] != nil {
            result.append(emailedCountForId[id]!)
        } else {
            result.append(0)
        }
    }
    
    return result
}
