/*
Title     : 카펫
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/42842?language=swift
Author    : EUNJI LEE
Created   : 2022.07.22
*/

// Solution 1.
import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let sum = brown + yellow
    var x = 0, y = 0
    
    for i in 1...sum {
        if sum % i == 0 {
            x = sum / i
            y = i
        }
                
        if (x - 2) * (y - 2) == yellow {
            break
        }
    }
    
    return [x, y]
}
