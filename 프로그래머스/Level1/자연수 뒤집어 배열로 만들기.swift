/*
Title     : 자연수 뒤집어 배열로 만들기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12954
Author    : EUNJI LEE
Created   : 2022.02.24
*/

// Solution 1.
func solution(_ n:Int64) -> [Int] {
    return String(n).compactMap { $0.hexDigitValue }.reversed()
}

// Solution 2.
func solution(_ n:Int64) -> [Int] {
    return String(n).map { Int(String($0))! }.reversed()
}