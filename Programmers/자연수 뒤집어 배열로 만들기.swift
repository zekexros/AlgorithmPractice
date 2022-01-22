//
//  자연수 뒤집어 배열로 만들기.swift
//  
//
//  Created by 양준혁 on 2022/01/22.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    return String(n).map { Int(String($0))! }.reversed()
}

