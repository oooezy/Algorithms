/*
Title     : 문자열 내림차순으로 배치하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12917
Author    : EUNJI LEE
Created   : 2022.02.22
*/

// Solution 1.
func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}