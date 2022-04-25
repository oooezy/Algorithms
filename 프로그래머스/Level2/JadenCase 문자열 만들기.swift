/*
Title     : JadenCase 문자열 만들기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12951
Author    : EUNJI LEE
Created   : 2022.04.26
*/

// Solution 1.
func solution(_ s:String) -> String {
    var str = Array(s.lowercased())
    var answer = ""
    var count = 1
    
    answer += str[0].uppercased()

    for idx in 1..<str.count {
        if str[idx] == " " {
            count = 0
            answer += " "
        } else if count == 0 {
            answer += String(str[idx]).uppercased()
            count += 1
        } else {
            answer += String(str[idx])
            count += 1
        }
    }

    return String(answer)
}