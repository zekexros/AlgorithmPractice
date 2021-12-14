import Foundation

typealias Matrix = (x: Int, y: Int)

func solution(_ numbers:[Int], _ hand:String) -> String {
    var dict = ["1": Matrix(0,0), "2": Matrix(0,1), "3": Matrix(0,2), "4": Matrix(1,0), "5": Matrix(1,1), "6": Matrix(1,2), "7": Matrix(2,0), "8": Matrix(2,1), "9": Matrix(2,2), "0": Matrix(3,1), "*": Matrix(3,0), "#": Matrix(3,2)]
    var result = ""
    var left = "*"
    var right = "#"
    
    for number in numbers {
        if number == 1 || number == 4 || number == 7 {
            result += "L"
            left = String(number)
        } else if number == 3 || number == 6 || number == 9 {
            result += "R"
            right = String(number)
        } else {
            let leftPoint = dict[left]!, rightPoint = dict[right]!, numberPoint = dict[String(number)]!
            let distanceOfLeft = abs(leftPoint.x - numberPoint.x) + abs(leftPoint.y - numberPoint.y)
            let distanceOfRight = abs(rightPoint.x - numberPoint.x) + abs(rightPoint.y - numberPoint.y)
            
            if hand == "left" {
                if distanceOfLeft <= distanceOfRight {
                    result += "L"
                    left = "\(number)"
                } else {
                    result += "R"
                    right = "\(number)"
                }
            } else {
                if distanceOfLeft >= distanceOfRight {
                    result += "R"
                    right = "\(number)"
                } else {
                    result += "L"
                    left = "\(number)"
                }
            }
            
        }
    }
    
    return result
}
