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