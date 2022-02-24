/*
Title     : 자릿수 더하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12931
Author    : EUNJI LEE
Created   : 2022.02.24
*/

// Solution 1.
import Foundation

func solution(_ n:Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}

// Solution 2.
import Foundation

func solution(_ n:Int) -> Int {
    return String(n).reduce(0, {$0 + Int(String($1))!})
}