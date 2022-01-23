//
//  BOJ-10828(스택).swift
//  PlaygroundForBOJ
//
//  Created by 양준혁 on 2022/01/23.
//

import Foundation

var n = Int(readLine()!)!
var stack = [Int]()
var prints = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[0] == "push" {
        stack.append(Int(input[1])!)
    } else if input[0] == "pop" {
        if !stack.isEmpty {
            let removed = stack.removeLast()
            prints.append(removed)
        } else {
            prints.append(-1)
        }
    } else if input[0] == "size" {
        prints.append(stack.count)
    } else if input[0] == "empty"{
        if stack.isEmpty {
            prints.append(1)
        } else {
            prints.append(0)
        }
    } else {
        if !stack.isEmpty {
            prints.append(stack.last!)
        } else {
            prints.append(-1)
        }
    }
}

prints.forEach { print($0) }


