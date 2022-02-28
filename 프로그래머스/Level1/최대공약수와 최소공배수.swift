/*
Title     : 최대공약수와 최소공배수
URL       : https://programmers.co.kr/learn/courses/30/lessons/12940
Author    : EUNJI LEE
Created   : 2022.02.28
*/

// Solution 1.
// 최대공약수
func GCD(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : GCD(b, a % b)
}

// 최소공배수
func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [GCD(n, m), LCM(n, m)]
}