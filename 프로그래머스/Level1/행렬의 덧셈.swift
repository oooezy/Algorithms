/*
Title     : 행렬의 덧셈
URL       : https://programmers.co.kr/learn/courses/30/lessons/12950
Author    : EUNJI LEE
Created   : 2022.02.21
*/

// Solution 1.
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map {zip($0, $1).map { $0 + $1 }}
}