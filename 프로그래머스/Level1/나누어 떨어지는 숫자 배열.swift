/*
Title     : 나누어 떨어지는 숫자 배열
URL       : https://programmers.co.kr/learn/courses/30/lessons/12910
Author    : EUNJI LEE
Created   : 2022.02.23
*/

// Solution 1.
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let res = arr.filter{ $0 % divisor == 0 }.sorted()
    return res.isEmpty ? [-1] : res
}