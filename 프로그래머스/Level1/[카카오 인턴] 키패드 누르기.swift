/*
Title     : [카카오 인턴] 키패드 누르기
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/67256
Author    : EUNJI LEE
Created   : 2022.09.19
*/

// Solution 1.
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result: String = ""
    var leftHand = 10, rightHand = 12
    
    for i in numbers {
        var num = i
        if (num == 1 || num == 4 || num == 7) {
            leftHand = num
            result += "L"
        } else if (num == 3 || num == 6 || num == 9) {
            rightHand = num
            result += "R"
        } else {
            if num == 0 {
                num = 11
            }
            
            var left = abs(((num - leftHand) / 3) + ((num - leftHand) % 3))
            var right = abs(((num - rightHand) / 3) + ((num - rightHand) % 3))
            
            if left < right {
                leftHand = num
                result += "L"
            } else if right < left {
                rightHand = num
                result += "R"
            } else {
                if hand == "right" {
                    rightHand = num
                    result += "R"
                } else {
                    leftHand = num
                    result += "L"
                }
            }
        }
    }

    return result
}

// Solution 2.
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result: String = ""
    let left = [1: (0, 0), 4: (1, 0), 7: (2, 0)]
    let right = [3: (0, 2), 6: (1, 2), 9: (2, 2)]
    let middle = [2: (0, 1), 5: (1, 1), 8: (2, 1), 0: (3, 1)]
    var leftHand = (3, 0), rightHand = (3, 2)
	
    for num in numbers {
        if let matrix = left[num] {
            leftHand = matrix
            result += "L"
        } else if let matrix = right[num] {
            rightHand = matrix
            result += "R"
        } else {
            let matrix = middle[num]!
            var l_dist = abs(matrix.0 - leftHand.0) + abs(matrix.1 - leftHand.1)
            var r_dist = abs(matrix.0 - rightHand.0) + abs(matrix.1 - rightHand.1)
            
            if l_dist < r_dist {
                leftHand = matrix
                result += "L"
            } else if l_dist > r_dist {
                rightHand = matrix
                result += "R"
            } else {
                if hand == "right" {
                    rightHand = matrix
                    result += "R"
                } else {
                    leftHand = matrix
                    result += "L"
                }
            }
        }
    }
    
    return result
}