/*
Title     : 수박수박수박수박수박수?
URL       : https://programmers.co.kr/learn/courses/30/lessons/12922
Author    : EUNJI LEE
Created   : 2022.02.23
*/

// Solution 1.
func solution(_ n:Int) -> String {
    let extra = n % 2 == 0 ? "" : "수"
    return String(repeating: "수박", count: n / 2) + extra
}