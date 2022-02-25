/*
Title     : 두 정수 사이의 합
URL       : https://programmers.co.kr/learn/courses/30/lessons/12912
Author    : EUNJI LEE
Created   : 2022.02.25
*/

// Solution 1.
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((a > b ? b...a : a...b).reduce(0, +))
}