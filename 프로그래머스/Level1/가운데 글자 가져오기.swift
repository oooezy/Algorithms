/*
Title     : 가운데 글자 가져오기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12903
Author    : EUNJI LEE
Created   : 2022.03.02
*/

// Solution 1.
func solution(_ s:String) -> String {
    if s.count % 2 == 0 { 
        return String(s[(s.count / 2)-1...(s.count / 2)])
    } else {
        return String(s[s.count / 2])
    }
}
