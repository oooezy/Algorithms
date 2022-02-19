/*
Title     : 핸드폰 번호 가리기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12948
Author    : EUNJI LEE
Created   : 2022.02.19
*/

// Solution 1.
func solution(_ phone_number:String) -> String {
    let len = phone_number.count
    
    return "\(String(repeating: "*", count: len - 4))\(phone_number.suffix(4))"
}