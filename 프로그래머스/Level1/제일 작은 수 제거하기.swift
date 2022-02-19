/*
Title     : 제일 작은 수 제거하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12935
Author    : EUNJI LEE
Created   : 2022.02.20
*/

// Solution 1.
func solution(_ arr:[Int]) -> [Int] {
   let min = arr.min()
    return arr.isEmpty ? [-1] : arr.compactMap{ $0 != min ? $0 : nil }
}