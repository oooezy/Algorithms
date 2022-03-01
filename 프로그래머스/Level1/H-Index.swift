/*
Title     : H-Index
URL       : https://programmers.co.kr/learn/courses/30/lessons/42747
Author    : EUNJI LEE
Created   : 2022.03.01
*/

// Solution 1.
import Foundation

func solution(_ citations:[Int]) -> Int {
    let citations = citations.sorted(by: >) // [6, 5, 3, 1, 0]
    var res = 0

    for i in 0..<citations.count {
        if i + 1 <= citations[i] {
            res = i + 1
        } else {
            break
        }
    }

    return res
}