/*
Title     : 문자열 내 마음대로 정렬하기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12915
Author    : EUNJI LEE
Created   : 2022.02.25
*/

// Solution 1.
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{ Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}