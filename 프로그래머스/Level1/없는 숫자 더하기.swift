/*
Title     : 없는 숫자 더하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/86051
Author    : EUNJI LEE
Created   : 2022.04.02
*/

// Solution 1.
import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer: Int = 0
    
    for i in 0...9 {
        if numbers.contains(i) == false {
            answer += i
        }
    }
    
    return answer
}

// Solution 2.
import Foundation

func solution(_ numbers:[Int]) -> Int {
    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
}
