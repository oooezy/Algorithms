/*
Title     : 기능개발
URL       : https://programmers.co.kr/learn/courses/30/lessons/42586
Author    : EUNJI LEE
Created   : 2022.03.25
*/

// Solution 1.
import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var Q = [Int]() 
    var ans = [Int]()
    
    for i in progresses.indices {
        Q.append(((100 - progresses[i] - 1) / speeds[i]) + 1)
    }
    
    while !Q.isEmpty {
        let day = Q.first!
        var taskCnt = 0
        while !Q.isEmpty && Q.first! <= day {
            taskCnt += 1
            Q.removeFirst()
        }
        ans.append(taskCnt)
    }
    return ans
}