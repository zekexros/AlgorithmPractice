import Foundation

func solution(_ record:[String]) -> [String] {
//    enter: id님이 들어왔습니다 -> 배열에 저장
//    leave: id님이 나갔습니다 -> 배열에 저장
//    change: dict[id] = nick -> dict타입 업데이트
//
//    배열에 저장된 요소들의 id에 nickName삽입
//
//    끝
    let records = record.map { $0.components(separatedBy: " ") }
    var log = [String]()
    var nicknameWithID = [String : String]() // id: Nickname
    
    for record in records {
        if record[0] == "Enter" {
            log.append("\(record[1]) 님이 들어왔습니다.")
            nicknameWithID[record[1]] = record[2]
        } else if record[0] == "Leave" {
            log.append("\(record[1]) 님이 나갔습니다.")
        } else {
            nicknameWithID[record[1]] = record[2]
        }
    }
    
    return log.map { log -> String in
        let logArray = log.components(separatedBy: " ")
        let id = logArray[0]
        let nickname = nicknameWithID[id]
        
        return nickname! + logArray[1] + " " + logArray[2]
    }
}


print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
