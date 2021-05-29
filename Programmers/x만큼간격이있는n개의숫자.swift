//
//  main.swift
//  algorithm
//
//  Created by zeke on 2021/05/29.
//  Copyright © 2021 zeke. All rights reserved.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return x == 0 ? Array(0..<n).map { _ in Int64(0) } : stride(from: x, through: x*n, by: x).map{Int64($0)}
}
