/*
Title     : 피보나치 수
URL       : https://programmers.co.kr/learn/courses/30/lessons/49993
Author    : EUNJI LEE
Created   : 2022.04.29
*/

// Solution 1.
func solution(_ n:Int) -> Int {
    var f1: Int = 0
    var f2: Int = 1
    
    if n > 1 {
        for _ in 2...n {
            let f = f1 + f2
            f1 = f2
            f2 = f % 1234567
        }
    }
    
    return f2
}