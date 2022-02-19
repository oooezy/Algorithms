/*
Title     : 정수 내림차순으로 배치하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12933
Author    : EUNJI LEE
Created   : 2022.02.19
*/

// Solution 1.
func solution(_ n:Int64) -> Int64 {
    
    var num = Array(String(n)).sorted(by: >)
    var res = ""
    num.map{ res += "\($0)"}
    
    return Int64(res)!
}

// Solution 2.
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted{ $0 > $1 }))!
}