/*
Title     : 약수의 합
URL       : https://programmers.co.kr/learn/courses/30/lessons/12928
Author    : EUNJI LEE
Created   : 2022.02.26
*/

// Solution 1.
func solution(_ n:Int) -> Int {
    guard n != 0 else {
        return 0
    }
    return Array(1...n).filter { n % $0 == 0 }.reduce(0, +)
}