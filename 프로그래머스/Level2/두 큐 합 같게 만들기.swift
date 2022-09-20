/*
Title     : 두 큐 합 같게 만들기
URL       : https://school.programmers.co.kr/learn/courses/30/lessons/118667?language=swift
Author    : EUNJI LEE
Created   : 2022.09.20
*/

// Solution 1.
import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let arr: [Int] = queue1 + queue2
    var left: Int = 0
    var right: Int = queue1.count
    var result: Int = 0
    
    var q1Sum: Int = queue1.reduce(0, +)
    var q2Sum: Int = queue2.reduce(0, +)
    let goal: Int = (q1Sum + q2Sum) / 2
    
    if (q1Sum + q2Sum) % 2 != 0 {
        return -1
    }
    
    if goal < queue1.max()! || goal < queue2.max()! {
        return -1
    }
    
    while right < arr.count && left <= right {
        if q1Sum < goal {
            q1Sum += arr[right]
            right += 1
        } else if q1Sum > goal {
            q1Sum -= arr[left]
            left += 1
        } else {
            break
        }
        result += 1
    }
    
    if q1Sum != goal {
        return -1
    }
    
    return result
}
