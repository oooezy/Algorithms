/*
Title     : 이상한 문자 만들기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12930
Author    : EUNJI LEE
Created   : 2022.02.24
*/

// Solution 1.
func solution(_ s:String) -> String {
    var idx = 0
    var res: String = ""
    
    for char in s {
        if char == " " {
            res += String(char)
            idx = 0
        } else if idx % 2 == 0 {
            res += String(char).uppercased()
            idx += 1
        } else {
            res += String(char).lowercased()
            idx += 1
        }
    }
    
    return res
}