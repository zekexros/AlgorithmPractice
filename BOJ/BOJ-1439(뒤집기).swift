import Foundation

var input = readLine()!.map { Int(String($0))! }

var oneCount = input.filter { $0 == 1 }.count
var zeroCount = input.count - oneCount

func recursive(record: inout [Bool], sequence: [Int], index: Int, standard: Int, list: [Int] = []) {
    if index >= record.count || sequence[index] != standard {
        for i in list {
            record[i] = true
        }
        return
    }
    
    recursive(record: &record, sequence: sequence, index: index+1, standard: standard, list: list + [index])
}

if oneCount == 0 || zeroCount == 0 {
    print(0)
} else {
    var standard = 1
    
    var count1 = 0
    var count2 = 0
    
    var record = input.map { num -> Bool in
        if num == standard {
            return false
        } else {
            return true
        }
    }
    var record2 = record.map { !$0 }
    
    for i in 0..<input.count {
        if record[i] == true {
            continue
        } else {
            recursive(record: &record, sequence: input, index: i, standard: 1)
            count1 += 1
        }
    }
    
    for i in 0..<input.count {
        if record2[i] == true {
            continue
        } else {
            recursive(record: &record2, sequence: input, index: i, standard: 0)
            count2 += 1
        }
    }

    print(min(count1, count2))
}


