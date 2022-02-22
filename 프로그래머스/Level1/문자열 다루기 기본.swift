/*
Title     : 문자열 다루기 기본
URL       : https://programmers.co.kr/learn/courses/30/lessons/12918
Author    : EUNJI LEE
Created   : 2022.02.22
*/

// Solution 1.
func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && Int(s) != nil
}
