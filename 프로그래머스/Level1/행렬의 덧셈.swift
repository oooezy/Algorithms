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

// Solturion 2.
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr3: [[Int]] = arr1
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count {
            arr3[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    
    return arr3
}