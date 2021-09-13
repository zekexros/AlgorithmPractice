import Foundation

func solution(_ new_id:String) -> String {
    return increaseID(id: reduceIDLength(id: putAInEmptyID(id: reducePeriod(id: removeIncorrectCharacter(id: changeLowerCase(id: new_id))))))
}

func changeLowerCase(id: String) -> String {
    return id.lowercased()
}

func removeIncorrectCharacter(id: String) -> String {
    let temp = "abcdefghijklmnopqrstuvwxyz0123456789-_."
    return id.filter { temp.contains($0) }
}

func reducePeriod(id: String) -> String {
    return id.split(separator: ".").joined(separator: ".")
}

func putAInEmptyID(id: String) -> String {
    return id.isEmpty ? "a" : id
}

func reduceIDLength(id: String) -> String {
    var reduced = [String]()
    id.enumerated().forEach { (index, element) in
        if index < 15 {
            reduced.append(String(element))
        }
    }
    if reduced.last! == "." {
        reduced.removeLast()
        return reduced.joined()
    } else {
        return reduced.joined()
    }
}

func increaseID(id: String) -> String {
    var id = id
    while id.count < 3 {
        id += String(id.last!)
    }
    return id
}

print(solution("abcdefghijklmn.p"))
