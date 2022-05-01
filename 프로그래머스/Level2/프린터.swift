/*
Title     : 프린터
URL       : https://programmers.co.kr/learn/courses/30/lessons/42587
Author    : EUNJI LEE
Created   : 2022.05.01
*/

// Solution 1.
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priority = priorities // 프린터 대기열
    var nowIdx = location // 요청한 문서의 대기열 index
    var print = 0 // 출력된 갯수
    
    while true {
        if priority.first! == priority.max() {
            priority.removeFirst()
            print += 1
            
            if nowIdx == 0 { 
                break
            } else {
                nowIdx -= 1
            }
        } else { 
            let temp = priority.removeFirst()
            priority.append(temp)
            
            if nowIdx == 0 { 
                nowIdx = priority.count - 1
            } else {
                nowIdx -= 1
            }
        }
    }
    
    return print
}