//
//  main.swift
//  algorithm
//
//  Created by zeke on 2021/05/29.
//  Copyright © 2021 zeke. All rights reserved.
//

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var volume = 0
        var firstPointX = 0
        var secondPointX = height.count-1
        
        while firstPointX <= secondPointX {
            let rectangleWidth = secondPointX - firstPointX
            let rectangleHeight = min(height[firstPointX], height[secondPointX])
            volume = volume < rectangleWidth * rectangleHeight ? rectangleWidth * rectangleHeight : volume
            
            if height[firstPointX] < height[secondPointX] {
                firstPointX += 1
            } else {
                secondPointX -= 1
            }
        }
        return volume
    }
}
