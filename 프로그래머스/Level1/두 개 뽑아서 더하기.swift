/*
Title     : 두 개 뽑아서 더하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/68644
Author    : EUNJI LEE
Created   : 2022.03.01
*/

// Solution 1.
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var res: Set<Int> = []
    var len = numbers.count
    
    for i in 0..<len {
        for j in i+1..<len {
            res.insert(numbers[i] + numbers[j])
        }
    }
    
    return res.sorted()
}