/*
Title     : 서울에서 김서방 찾기
URL       : https://programmers.co.kr/learn/courses/30/lessons/12919
Author    : EUNJI LEE
Created   : 2022.02.22
*/

// Solution 1.
func solution(_ seoul:[String]) -> String {
    let index = seoul.index(of: "Kim")!
    return String("김서방은 \(index)에 있다")
}
