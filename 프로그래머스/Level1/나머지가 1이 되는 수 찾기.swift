/*
Title     : 나머지가 1이 되는 수 찾기
URL       : https://programmers.co.kr/learn/courses/30/lessons/87389
Author    : EUNJI LEE
Created   : 2022.04.05
*/

// Solution 1.
import Foundation

func solution(_ n:Int) -> Int {
    return (2...n).filter { n % $0 == 1 }[0]
}

// Solution 2.
import Foundation

func solution(_ n:Int) -> Int {
    for i in 2..<n {
        if n % i == 1 {
            return i
        }
    }
    
    return 0
}