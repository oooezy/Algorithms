/*
Title     : 평균 구하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12944
Author    : EUNJI LEE
Created   : 2022.02.23
*/

// Solution 1.
func solution(_ arr:[Int]) -> Double {
    return arr.reduce(0, +) / arr.count
}