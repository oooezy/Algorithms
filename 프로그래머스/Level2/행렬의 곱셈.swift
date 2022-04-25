/*
Title     : 행렬의 곱셈
URL       : https://programmers.co.kr/learn/courses/30/lessons/12949
Author    : EUNJI LEE
Created   : 2022.04.26
*/

// Solution 1.
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)

    for i in 0..<result.count {
        for j in 0..<result[i].count {
            for k in 0..<arr1[0].count {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    return result
}