/*
Title     : 소수 찾기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12921
Author    : EUNJI LEE
Created   : 2022.03.11
*/

// Solution 1.
import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    var array = Array.init(repeating: false, count: n)
    
    for i 2...n {
        if arr[i] == false {
            count += 1
            for j in stride(from: i, to: n + 1, by: i) {
                arr[j] = true
            }
        }
    }
    return count
}