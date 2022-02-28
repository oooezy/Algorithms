/*
Title     : 정수 제곱근 판별
URL       : https://programmers.co.kr/learn/courses/30/lessons/12934
Author    : EUNJI LEE
Created   : 2022.02.28
*/

// Solution 1.
import Foundation

func solution(_ n:Int64) -> Int64 {
    let answer = Int64(sqrt(Double(n)))
    return answer != nil ? (answer + 1) * (answer + 1) : -1
}