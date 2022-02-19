/*
Title     : x만큼 간격이 있는 n개의 숫자
URL       : https://programmers.co.kr/learn/courses/30/lessons/12954
Author    : EUNJI LEE
Created   : 2022.02.20
*/

// Solution 1.
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var res: [Int64] = []
    
    for i in 1...n {
        res.append(Int64(i * x))
    }
    
    return res
}

// Solution 2.
func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}